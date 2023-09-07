import 'package:simply_sell/features/branch/data/remote_data_source/branch_remote_data_source.dart';
import 'package:simply_sell/features/branch/data/remote_data_source/branch_remote_data_source_impl.dart';
import 'package:simply_sell/features/branch/data/repositories/branch_repository_impl.dart';
import 'package:simply_sell/features/branch/domain/repositories/branch_repository.dart';
import 'package:simply_sell/features/branch/domain/usecases/get_branch_details_usecase.dart';
import 'package:simply_sell/features/branch/presentation/cubit/branch_cubit.dart';

import '../injection_container.dart';

Future<void> branchInjectionContainer() async {
  // Cubit
  sl.registerFactory(
    () => BranchCubit(getBranchDetailsUsecase: sl.call()),
  );

  // Usecase
  sl.registerLazySingleton<GetBranchDetailsUsecase>(
      () => GetBranchDetailsUsecase(branchRepository: sl.call()));

  // Repositories
  sl.registerLazySingleton<BranchRepository>(
      () => BranchRepositoryImpl(branchRemoteDataSource: sl.call()));

  // Remote Data Source
  sl.registerLazySingleton<BranchRemoteDataSource>(
      () => BranchRemoteDataSourceImpl(
            hasuraService: sl.call(),
          ));
}
