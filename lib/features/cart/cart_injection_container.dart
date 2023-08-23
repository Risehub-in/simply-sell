import 'package:simply_sell/features/cart/data/remote_data_source/cart_remote_data_source.dart';
import 'package:simply_sell/features/cart/data/remote_data_source/cart_remote_data_source_impl.dart';
import 'package:simply_sell/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:simply_sell/features/cart/domain/repositories/cart_repository.dart';
import 'package:simply_sell/features/cart/domain/usecases/add_to_cart_usercase.dart';
import 'package:simply_sell/features/cart/domain/usecases/get_cart_usecase.dart';
import 'package:simply_sell/features/cart/presentation/cubit/cart_cubit.dart';

import '../injection_container.dart';

Future<void> cartInjectionContainer() async {
  // Cubit
  sl.registerFactory(
      () => CartCubit(addToCartUsecase: sl.call(), getCartUsecase: sl.call()));

  // Usecase
  sl.registerLazySingleton<AddToCartUsecase>(
      () => AddToCartUsecase(cartRepository: sl.call()));

  sl.registerLazySingleton<GetCartUsecase>(
      () => GetCartUsecase(cartRepository: sl.call()));

  // Repositories
  sl.registerLazySingleton<CartRepository>(
      () => CartRepositoryImpl(cartRemoteDataSource: sl.call()));

  // Remote Data Source
  sl.registerLazySingleton<CartRemoteDataSource>(() =>
      CartRemoteDataSourceImpl(supabase: sl.call(), hasuraService: sl.call()));
}
