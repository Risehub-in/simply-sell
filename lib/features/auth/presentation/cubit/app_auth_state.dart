part of 'app_auth_cubit.dart';

abstract class AppAuthState extends Equatable {
  const AppAuthState();

  @override
  List<Object> get props => [];
}

class AppAuthInitial extends AppAuthState {
  @override
  List<Object> get props => [];
}

class AppAuthenticated extends AppAuthState {
  final String id;
  final String accessToken;

  AppAuthenticated({
    required this.id,
    required this.accessToken,
  });

  @override
  List<Object> get props => [id, accessToken];
}

class AppUnauthenticated extends AppAuthState {}

class AppAuthError extends AppAuthState {
  final String message;

  AppAuthError(this.message);

  @override
  List<Object> get props => [message];
}
