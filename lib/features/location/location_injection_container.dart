import 'package:simply_sell/features/injection_container.dart';
import 'package:simply_sell/features/location/data/repositories/location_repository_impl.dart';
import 'package:simply_sell/features/location/domain/usecases/get_address_by_coordinates_usecase.dart';
import 'package:simply_sell/features/location/domain/usecases/get_coordinates_by_place_id_usecase.dart';
import 'package:simply_sell/features/location/domain/usecases/get_location_usecase.dart';
import 'package:simply_sell/features/location/domain/usecases/get_search_prediction_usecase.dart';
import 'package:simply_sell/features/location/presentation/cubits/coverage_cubit.dart';
import 'package:simply_sell/features/location/presentation/cubits/location_cubit.dart';
import 'package:simply_sell/features/location/presentation/cubits/coordinates_cubit.dart';
import 'package:simply_sell/features/location/presentation/cubits/prediction_cubit.dart';
import 'data/data_source/local_data_source/location_local_data_source.dart';
import 'data/data_source/local_data_source/location_local_data_source_impl.dart';
import 'data/data_source/remote_data_source/location_remote_data_source.dart';
import 'data/data_source/remote_data_source/location_remote_data_source_impl.dart';
import 'domain/repository/location_repository.dart';
import 'domain/usecases/get_delivery_distance_usecase.dart';

Future<void> locationInjenctionContainer() async {
  // Cubit
  sl.registerFactory(
    () => LocationCubit(
      getSearchPredictionUsecase: sl.call(),
      getCoordinatesUsecase: sl.call(),
      getAddressByCoordinatesUsecase: sl.call(),
    ),
  );
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
