import 'package:simply_sell/features/auth/data/remote_data_source/auth_remote_data_source.dart';

import '../../domain/entities/repositories/auth_repository.dart';
import '../models/auth_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({required this.authRemoteDataSource});

  @override
  Stream<AuthModel> getAuth() {
    // TODO: implement getAuth
    throw UnimplementedError();
  }

  @override
  Future signInWithPhone(String phone) async {
    authRemoteDataSource.signInWithPhone(phone);
  }

  @override
  Future verifyOtpAndSignIn(String phone, String token) async {
    authRemoteDataSource.verifyOtpAndSignIn(phone, token);
  }
}
