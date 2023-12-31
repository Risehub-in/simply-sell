import 'package:simply_sell/features/injection_container.dart';
import 'package:simply_sell/features/products/data/remote_data_source/product_remote_data_source.dart';
import 'package:simply_sell/features/products/data/remote_data_source/product_remote_data_source_impl.dart';
import 'package:simply_sell/features/products/data/repositories/product_repo_impl.dart';
import 'package:simply_sell/features/products/domain/repositories/product_repository.dart';
import 'package:simply_sell/features/products/domain/usecases/get_products_by_category_id_usecase.dart';
import 'package:simply_sell/features/products/presentation/cubit/product_cubit.dart';

Future<void> productInjenctionContainer() async {
  // Cubit
  sl.registerFactory(
      () => ProductCubit(getProductsByCategoryIdUsecase: sl.call()));

  // UserCases
  sl.registerLazySingleton<GetProductsByCategoryIdUsecase>(
      () => GetProductsByCategoryIdUsecase(repository: sl.call()));

  // Repositories
  sl.registerLazySingleton<ProductRepository>(
      () => ProductRepoImpl(productRemoteDataSource: sl.call()));

  // RemoteDataSource
  sl.registerLazySingleton<ProductRemoteDataSource>(
      () => ProductRemoteDataSourceImpl(
            hasuraService: sl.call(),
          ));
}
