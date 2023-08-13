import 'package:simply_sell/features/auth/presentation/cubit/app_auth_cubit.dart';
import 'package:simply_sell/features/injection_container.dart';

Future<void> authInjectionContainer() async {
  // Cubits
  sl.registerFactory(() => AppAuthCubit(supabase: sl.call()));
}
