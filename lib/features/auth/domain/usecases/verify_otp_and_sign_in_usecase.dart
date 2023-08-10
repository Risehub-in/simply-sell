import '../repositories/auth_repository.dart';

class VerifyOtpAndSignInUsercase {
  final AuthRepository authRepository;

  VerifyOtpAndSignInUsercase({required this.authRepository});

  Future call(String phone, String token) =>
      authRepository.verifyOtpAndSignIn(phone, token);
}
