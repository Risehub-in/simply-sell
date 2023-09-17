import 'package:simply_sell/features/order/data/remote_data_source/order_remote_data_source.dart';
import 'package:simply_sell/features/order/data/remote_data_source/order_remote_data_source_impl.dart';
import 'package:simply_sell/features/order/data/repository/order_repository_impl.dart';
import 'package:simply_sell/features/order/domain/usecase/create_order_usecase.dart';
import 'package:simply_sell/features/order/presentation/cubit/order_cubit.dart';

import '../injection_container.dart';
import 'domain/repository/order_repository.dart';

Future<void> orderInjectionContainer() async {
  // Cubit
  sl.registerFactory(
    () => OrderCubit(
      createOrderUsecase: sl.call(),
    ),
  );

  // Usecases
  sl.registerLazySingleton<CreateOrderUsecase>(
      () => CreateOrderUsecase(orderRepository: sl.call()));

  // Repository
  sl.registerLazySingleton<OrderRepository>(
    () => OrderRepositoryImpl(
      orderRemoteDataSource: sl.call(),
    ),
  );

  // Remote Data Source Impl
  sl.registerLazySingleton<OrderRemoteDataSource>(
    () => OrderRemoteDataSourceImpl(
      razorpay: sl.call(),
      hasuraService: sl.call(),
      supabase: sl.call(),
    ),
  );
}
