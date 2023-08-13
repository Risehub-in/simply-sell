import 'package:simply_sell/features/categories/data/remote_data_source/category_remote_data_source_impl.dart';
import 'package:simply_sell/features/categories/data/repositories/category_repository_impl.dart';
import 'package:simply_sell/features/categories/domain/repositories/category_repository.dart';
import 'package:simply_sell/features/categories/domain/usecases/get_categories_usecase.dart';
import 'package:simply_sell/features/categories/presentation/cubit/category_cubit.dart';

import '../injection_container.dart';
import 'data/remote_data_source/category_remote_data_source.dart';

Future<void> categoryInjenctionContainer() async {
  // Cubit
  sl.registerFactory(() => CategoryCubit(getCategoriesUsecase: sl.call()));

  // Usecases
  sl.registerLazySingleton<GetCategoriesUsecase>(
      () => GetCategoriesUsecase(categoriesRepository: sl.call()));

  // Repositories
  sl.registerLazySingleton<CategoryRepository>(
      () => CategoryRepositoryImpl(categoryRemoteDataSource: sl.call()));

  // RemoteDataSource
  sl.registerLazySingleton<CategoryRemoteDataSource>(() =>
      CategoryRemoteDataSourceImpl(
          hasuraService: sl.call(),
          supabase: sl.call(),
          categorySupabaseTable: sl.call()));
}
