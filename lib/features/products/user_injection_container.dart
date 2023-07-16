import 'package:simply_sell/features/injection_container.dart';
import 'package:simply_sell/features/products/data/remote_data_source/product_remote_data_source.dart';
import 'package:simply_sell/features/products/data/remote_data_source/product_remote_data_source_impl.dart';
import 'package:simply_sell/features/products/data/repositories/product_repo_impl.dart';
import 'package:simply_sell/features/products/domain/repositories/product_repository.dart';
import 'package:simply_sell/features/products/domain/usecases/get_products_usecase.dart';
import 'package:simply_sell/features/products/domain/usecases/get_single_product_usecase.dart';
import 'package:simply_sell/features/products/presentation/bloc/cubit/product_cubit.dart';

Future<void> productInjenctionContainer() async {
  // Cubit
  sl.registerFactory(() => ProductCubit(getProductsUseCase: sl.call()));

  // UserCases
  sl.registerLazySingleton<GetProductsUseCase>(
      () => GetProductsUseCase(repository: sl.call()));
  sl.registerLazySingleton<GetSingleProductUsecase>(
      () => GetSingleProductUsecase(repository: sl.call()));

  // Repositories
  sl.registerLazySingleton<ProductRepository>(
      () => ProductRepoImpl(productRemoteDataSource: sl.call()));

  // RemoteDataSource
  sl.registerLazySingleton<ProductRemoteDataSource>(() =>
      ProductRemoteDataSourceImpl(
          supabase: sl.call(), productSupabaseTable: sl.call()));
}
