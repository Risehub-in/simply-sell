import 'package:simply_sell/features/auth/domain/entities/repositories/auth_repository.dart';

class SignInWithPhoneUsecase {
  final AuthRepository authRepository;

  SignInWithPhoneUsecase({required this.authRepository});

  Future call(String phone) => authRepository.signInWithPhone(phone);
}
