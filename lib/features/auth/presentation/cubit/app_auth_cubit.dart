import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'app_auth_state.dart';

class AppAuthCubit extends Cubit<AppAuthState> {
  final Supabase supabase;
  AppAuthCubit({required this.supabase}) : super(AppAuthInitial()) {
    authCheck();
  }

  authCheck() {
    supabase.client.auth.onAuthStateChange.listen((event) {
      if (event.session != null) {
        emit(AppAuthenticated(id: event.session!.user.id));
      } else {
        emit(AppUnauthenticated());
      }
    });
  }
}
