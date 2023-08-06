import 'package:simply_sell/features/auth/domain/entities/auth_entity.dart';

class AuthModel extends AuthEntity {
  AuthModel({
    required super.phone,
    super.accessToken,
    super.uid,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      phone: json['phone'],
      accessToken: json['access_token'],
      uid: json['id'],
    );
  }
}
