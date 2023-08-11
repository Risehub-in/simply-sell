import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'app_auth_state.dart';

class AppAuthCubit extends Cubit<AppAuthState> {
  final Supabase supabase;
  late StreamSubscription<AuthState> _authSubscription;

  AppAuthCubit({
    required this.supabase,
  }) : super(AppAuthInitial()) {
    getSession();
  }

  getSession() {
    _authSubscription = supabase.client.auth.onAuthStateChange.listen((event) {
      if (event.session != null) {
        emit(AppAuthenticated(
            id: event.session!.user.id,
            accessToken: event.session!.accessToken));
      } else {
        emit(AppUnauthenticated());
      }
    });
  }

  Future signInWithPhone(String phone) async {
    try {
      await supabase.client.auth.signInWithOtp(phone: phone);
    } catch (e) {
      emit(AppAuthError(e.toString()));
    }
  }

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

  Future<void> signOut() async {
    supabase.client.auth.signOut();
  }

  @override
  Future<void> close() {
    _authSubscription.cancel();
    return super.close();
  }
}
