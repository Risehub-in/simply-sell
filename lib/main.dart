import 'package:flutter/material.dart';
import 'package:simply_sell/core/config/theme.dart';
import 'package:simply_sell/home/presentation/pages/home_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://cgqyklgxacpuckjtnxmf.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNncXlrbGd4YWNwdWNranRueG1mIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODQ3NTQ5MTAsImV4cCI6MjAwMDMzMDkxMH0.UOaFiqkR5YOosL1DPvYJIA3pvJNtMxQFtBqdJLhx3o4',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simply Sell',
      theme: AppTheme.lightTheme,
      home: const HomePage(),
    );
  }
}
