import 'package:equatable/equatable.dart';

class AuthEntity extends Equatable {
  final int phone;
  final String? accessToken;
  final String? uid;

  AuthEntity({
    required this.phone,
    this.accessToken,
    this.uid,
  });

  @override
  List<Object?> get props => [
        phone,
        accessToken,
        uid,
      ];
}
