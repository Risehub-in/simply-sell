import 'package:flutter/material.dart';
import 'package:simply_sell/features/home/presentation/pages/home_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final supabase = Supabase.instance.client;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: supabase.auth.onAuthStateChange,
        builder: (context, snapshot) {
          final Session? session = snapshot.data?.session;
          if (session != null) {
            print(snapshot.data?.session?.user.aud);
            return HomePage();
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
