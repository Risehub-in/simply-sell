import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/core/config/router.dart';
import 'package:simply_sell/core/config/theme.dart';
import 'package:simply_sell/features/auth/presentation/cubit/app_auth_cubit.dart';
import 'package:simply_sell/features/categories/presentation/cubit/category_cubit.dart';
import 'package:simply_sell/features/products/presentation/bloc/cubit/product_cubit.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'features/injection_container.dart' as di;
import 'keys.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaeAnonKey,
  );
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => di.sl<AppAuthCubit>(),
        ),
        BlocProvider(
          create: (_) => di.sl<ProductCubit>(),
        ),
        BlocProvider(
          create: (_) => di.sl<CategoryCubit>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Simply Sell',
        theme: AppTheme.lightTheme,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
