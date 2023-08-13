import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'app_auth_state.dart';

class AppAuthCubit extends Cubit<AppAuthState> {
  final Supabase supabase;

  AppAuthCubit({
    required this.supabase,
  }) : super(AppAuthInitial()) {
    getSession();
  }

  getSession() {
    final session = supabase.client.auth.currentSession;
    if (session != null) {
      emit(AppAuthenticated(
        id: session.user.id,
        accessToken: session.accessToken,
      ));
    } else {
      emit(AppUnauthenticated());
    }
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
      emit(AppAuthError(e.toString()));
    }
  }

  Future<void> signOut() async {
    try {
      supabase.client.auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
