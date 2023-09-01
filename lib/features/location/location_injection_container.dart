import 'package:simply_sell/features/injection_container.dart';
import 'package:simply_sell/features/location/data/repositories/location_repository_impl.dart';
import 'package:simply_sell/features/location/domain/usecases/get_address_by_coordinates_usecase.dart';
import 'package:simply_sell/features/location/domain/usecases/get_coordinates_by_place_id_usecase.dart';
import 'package:simply_sell/features/location/domain/usecases/get_location_usecase.dart';
import 'package:simply_sell/features/location/domain/usecases/get_search_prediction_usecase.dart';
import 'package:simply_sell/features/location/presentation/cubits/location_cubit.dart';
import 'package:simply_sell/features/location/presentation/cubits/coordinates_cubit.dart';
import 'package:simply_sell/features/location/presentation/cubits/prediction_cubit.dart';
import 'data/data_source/local_data_source/location_local_data_source.dart';
import 'data/data_source/local_data_source/location_local_data_source_impl.dart';
import 'data/data_source/remote_data_source/location_remote_data_source.dart';
import 'data/data_source/remote_data_source/location_remote_data_source_impl.dart';
import 'domain/repository/location_repository.dart';

Future<void> locationInjenctionContainer() async {
  // Cubit
  sl.registerFactory(
    () => LocationCubit(
      getSearchPredictionUsecase: sl.call(),
      getLocationUsecase: sl.call(),
      getAddressByCoordinatesUsecase: sl.call(),
    ),
  );
  sl.registerFactory(() => PredictionCubit(searchAddressUsecase: sl.call()));
  sl.registerFactory(() => CoordinatesCubt(getCoordinatesUsecase: sl.call()));

  // UserCases
  sl.registerLazySingleton<GetLocationUsecase>(
      () => GetLocationUsecase(locationRepository: sl.call()));

  sl.registerLazySingleton<GetSearchPredictionUsecase>(
      () => GetSearchPredictionUsecase(locationRepository: sl.call()));

  sl.registerLazySingleton<GetCoordinatesByPlaceId>(
      () => GetCoordinatesByPlaceId(locationRepository: sl.call()));

  sl.registerLazySingleton<GetAddressByCoordinatesUsecase>(
      () => GetAddressByCoordinatesUsecase(locationRepository: sl.call()));

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
