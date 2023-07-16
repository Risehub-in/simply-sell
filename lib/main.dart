import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/core/config/theme.dart';
import 'package:simply_sell/features/products/presentation/bloc/cubit/product_cubit.dart';
import 'package:simply_sell/features/products/presentation/pages/product_list_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'features/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://cgqyklgxacpuckjtnxmf.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNncXlrbGd4YWNwdWNranRueG1mIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODQ3NTQ5MTAsImV4cCI6MjAwMDMzMDkxMH0.UOaFiqkR5YOosL1DPvYJIA3pvJNtMxQFtBqdJLhx3o4',
  );
  await di.init();
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
      home: BlocProvider(
        create: (_) => di.sl<ProductCubit>()..getProducts(),
        child: ProductListPage(),
      ),
    );
  }
}
