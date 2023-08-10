import 'package:simply_sell/features/auth/domain/entities/auth_entity.dart';

abstract class AuthRepository {
  Future signInWithPhone(String phone);
  Future verifyOtpAndSignIn(String phone, String token);
  Stream<AuthEntity> getAuth();
}
