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

  AppAuthenticated({required this.id});

  @override
  List<Object> get props => [id];
}

class AppUnauthenticated extends AppAuthState {
}
