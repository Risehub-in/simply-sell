import 'package:simply_sell/features/address/data/remote_data_source/address_remote_data_source.dart';
import 'package:simply_sell/features/address/data/remote_data_source/address_remote_data_source_impl.dart';
import 'package:simply_sell/features/address/data/repositories/address_repository_impl.dart';
import 'package:simply_sell/features/address/domain/repositories/address_repository.dart';
import 'package:simply_sell/features/address/domain/usecases/add_address_usecase.dart';
import 'package:simply_sell/features/address/domain/usecases/stream_address_list_usecase.dart';
import 'package:simply_sell/features/address/presentation/cubit/address_cubit.dart';
import 'package:simply_sell/features/injection_container.dart';

Future<void> addressInjectionContainer() async {
  // Cubit
  sl.registerFactory(() => AddressCubit(
      streamAddressesUsecase: sl.call(), addAddressUsecase: sl.call()));

  // Usecases
  sl.registerLazySingleton(
      () => StreamAddressesUsecase(addressRepository: sl.call()));

  sl.registerLazySingleton(
      () => AddAddressUsecase(addressRepository: sl.call()));

  // Repository
  sl.registerLazySingleton<AddressRepository>(
      () => AddressRepositoryImpl(addressRemoteDataSource: sl.call()));

  // Remote Data Source
  sl.registerLazySingleton<AddressRemoteDataSource>(() =>
      AddressRemoteDataSourceImpl(
          hasuraService: sl.call(), supabase: sl.call()));
}
