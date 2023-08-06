import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/auth/domain/usecases/sign_in_with_phone_usecase.dart';
import 'package:simply_sell/features/auth/domain/usecases/verify_otp_and_sign_in_usecase.dart';
part 'app_auth_state.dart';

class AppAuthCubit extends Cubit<AppAuthState> {
  final SignInWithPhoneUsecase signInWithPhoneUsecase;
  final VerifyOtpAndSignInUsercase verifyOtpAndSignInUsercase;
  AppAuthCubit({
    required this.signInWithPhoneUsecase,
    required this.verifyOtpAndSignInUsercase,
  }) : super(AppAuthInitial()) {}

  Future signInWithPhone(String phone) async {
    try {
      await signInWithPhoneUsecase.call(phone);
    } catch (e) {
      emit(AppAuthError(e.toString()));
    }
  }

  Future verifyOtpAndSignIn(String phone, String token) async {
    try {
      await verifyOtpAndSignInUsercase.call(phone, token);
    } catch (e) {
      emit(AppAuthError(e.toString()));
    }
  }
}
