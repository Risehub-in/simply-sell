import 'package:simply_sell/features/auth/data/models/auth_model.dart';
import 'package:simply_sell/features/auth/data/remote_data_source/auth_remote_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Supabase supabase;

  AuthRemoteDataSourceImpl({required this.supabase});

  @override
  Stream<AuthModel> getAuth() {
    // TODO: implement getAuth
    throw UnimplementedError();
  }

  @override
  Future signInWithPhone(String phone) async {
    try {
      await supabase.client.auth.signInWithOtp(phone: phone);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future verifyOtpAndSignIn(String phone, String token) async {
    try {
      await supabase.client.auth.verifyOTP(
        phone: phone,
        token: token,
        type: OtpType.sms,
      );
    } catch (e) {
      rethrow;
    }
  }
}
