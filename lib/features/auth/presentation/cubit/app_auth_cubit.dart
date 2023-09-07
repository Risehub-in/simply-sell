import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';
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
        var uniqNo = Uuid().v4();
        await supabase.client.auth.signUp(phone: phone, password: uniqNo.toString()); // password to be replaced by uuid.v4
        //await supabase.client.auth.signInWithOtp(phone: phone);
    } catch (e) {
      print('Error on SignUp===>$e');
      try{
        if (e is AuthException) {
          final authException = e as AuthException;
          if (authException.statusCode == 400 || authException.message.contains('User already registered')) {
            await supabase.client.auth.signInWithOtp(phone: phone);
          }
        }else{
          emit(AppAuthError(e.toString()));
        }
      }catch(ex){
        print('Error on SignIn===>$ex');
        emit(AppAuthError(ex.toString()));
      }
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

/*  Future<bool> isUserExist(String phone) async {
    final response = await supabase.client
        .from('auth.users')
        .select('id')
        .eq('phone', phone);
    print('response.data======>${response.data}');
    return response.data != null && response.data.length > 0;
  }*/
}
