import '../models/auth_model.dart';

abstract class AuthRemoteDataSource {
  Future signInWithPhone(String phone);
  Future verifyOtpAndSignIn(String phone, String token);
  Stream<AuthModel> getAuth();
}
