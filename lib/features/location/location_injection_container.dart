import '../injection_container.dart';
import 'data/data_source/local_data_source/location_local_data_source.dart';
import 'data/data_source/local_data_source/location_local_data_source_impl.dart';
import 'data/data_source/remote_data_source/location_remote_data_source.dart';
import 'data/data_source/remote_data_source/location_remote_data_source_impl.dart';
import 'data/repositories/location_repository_impl.dart';
import 'domain/repository/location_repository.dart';
import 'domain/usecases/get_address_by_coordinates_usecase.dart';
import 'domain/usecases/get_coordinates_by_place_id_usecase.dart';
import 'domain/usecases/get_delivery_distance_usecase.dart';
import 'domain/usecases/get_location_usecase.dart';
import 'domain/usecases/get_search_prediction_usecase.dart';
import 'presentation/cubits/coordinates_cubit.dart';
import 'presentation/cubits/coverage_cubit.dart';
import 'presentation/cubits/get_location_cubit.dart';
import 'presentation/cubits/prediction_cubit.dart';
import 'presentation/cubits/set_location_cubit.dart';

Future<void> locationInjenctionContainer() async {
  // Cubit
  sl.registerFactory(() => GetLocationCubit(
        getAddressByCoordinatesUsecase: sl.call(),
        getCoordinatesUsecase: sl.call(),
        getBranchDetailsUsecase: sl.call(),
        checkDeliveryRadiusUsecase: sl.call(),
      ));
  sl.registerFactory(
      () => SetLocationCubit(getAddressByCoordinatesUsecase: sl.call()));

  sl.registerFactory(() => PredictionCubit(searchAddressUsecase: sl.call()));

  sl.registerFactory(() => CoordinatesCubit(
        getCoordinatesByPlaceId: sl.call(),
        getCoordinatesUsecase: sl.call(),
      ));

  sl.registerFactory(() => CoverageCubit(
      checkDeliveryRadiusUsecase: sl.call(),
      getBranchDetailsUsecase: sl.call()));

  // UserCases
  sl.registerLazySingleton<GetCoordinatesUsecase>(
      () => GetCoordinatesUsecase(locationRepository: sl.call()));

  sl.registerLazySingleton<GetSearchPredictionUsecase>(
      () => GetSearchPredictionUsecase(locationRepository: sl.call()));

  sl.registerLazySingleton<GetCoordinatesByPlaceId>(
      () => GetCoordinatesByPlaceId(locationRepository: sl.call()));

  sl.registerLazySingleton<GetAddressByCoordinatesUsecase>(
      () => GetAddressByCoordinatesUsecase(locationRepository: sl.call()));

  sl.registerLazySingleton<CheckDeliveryRadiusUsecase>(
      () => CheckDeliveryRadiusUsecase(locationRepository: sl.call()));

  // Repositories
  sl.registerLazySingleton<LocationRepository>(() => LocationRepositoryImpl(
      locationLocalDataSource: sl.call(), locationRemoteDataSource: sl.call()));

  // RemoteDataSource
  sl.registerLazySingleton<LocationRemoteDataSource>(
      () => LocationRemoteDataSourceImpl());

  // LocalDataSource
  sl.registerLazySingleton<LocationLocalDataSource>(
      () => LocationLocalDataSourceImpl());
}
