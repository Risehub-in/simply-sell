import 'package:simply_sell/features/auth/data/remote_data_source/auth_remote_data_source.dart';
import 'package:simply_sell/features/auth/data/remote_data_source/auth_remote_data_source_impl.dart';
import 'package:simply_sell/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:simply_sell/features/auth/domain/repositories/auth_repository.dart';
import 'package:simply_sell/features/auth/domain/usecases/sign_in_with_phone_usecase.dart';
import 'package:simply_sell/features/auth/domain/usecases/verify_otp_and_sign_in_usecase.dart';
import 'package:simply_sell/features/auth/presentation/cubit/app_auth_cubit.dart';
import 'package:simply_sell/features/injection_container.dart';

Future<void> authInjectionContainer() async {
  // Cubits
  sl.registerFactory(() => AppAuthCubit(
      signInWithPhoneUsecase: sl.call(),
      verifyOtpAndSignInUsercase: sl.call()));

  // UserCases
  sl.registerLazySingleton<SignInWithPhoneUsecase>(
      () => SignInWithPhoneUsecase(authRepository: sl.call()));

  sl.registerLazySingleton<VerifyOtpAndSignInUsercase>(
      () => VerifyOtpAndSignInUsercase(authRepository: sl.call()));

  // Repositories
  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(authRemoteDataSource: sl.call()));

  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(supabase: sl.call()));
}
