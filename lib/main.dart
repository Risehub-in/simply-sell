import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/core/config/router.dart';
import 'package:simply_sell/core/config/theme.dart';
import 'package:simply_sell/features/address/presentation/cubit/address_cubit.dart';
import 'package:simply_sell/features/auth/presentation/cubit/app_auth_cubit.dart';
import 'package:simply_sell/features/branch/presentation/cubit/branch_cubit.dart';
import 'package:simply_sell/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:simply_sell/features/categories/presentation/cubit/category_cubit.dart';
import 'package:simply_sell/features/location/presentation/cubits/coverage_cubit.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'features/injection_container.dart' as di;
import 'features/location/presentation/cubits/get_location_cubit.dart';
import 'features/location/presentation/cubits/coordinates_cubit.dart';
import 'features/location/presentation/cubits/prediction_cubit.dart';
import 'features/location/presentation/cubits/set_location_cubit.dart';
import 'features/order/presentation/cubit/order_cubit.dart';
import 'features/products/presentation/cubit/product_cubit.dart';
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
        BlocProvider(
          create: (_) => di.sl<CartCubit>(),
          lazy: false,
        ),
        BlocProvider(
          create: (_) => di.sl<GetLocationCubit>(),
        ),
        BlocProvider(
          create: (_) => di.sl<SetLocationCubit>(),
        ),
        BlocProvider(
          create: (_) => di.sl<PredictionCubit>(),
        ),
        BlocProvider(
          create: (_) => di.sl<CoordinatesCubit>(),
        ),
        BlocProvider(
          create: (_) => di.sl<CoverageCubit>(),
        ),
        BlocProvider(
          create: (_) => di.sl<BranchCubit>()..getBranchDetails(),
        ),
        BlocProvider(
          create: (_) => di.sl<OrderCubit>(),
        ),
        BlocProvider(
          create: (_) => di.sl<AddressCubit>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Simply Sell',
        theme: AppTheme.newTheme,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
