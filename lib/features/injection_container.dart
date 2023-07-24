import 'package:get_it/get_it.dart';
import 'package:simply_sell/core/config/supabase_table.dart';
import 'package:simply_sell/features/products/product_injection_container.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //External
  Supabase supabase = Supabase.instance;
  ProductSupabaseTable productSupabaseTable = ProductSupabaseTable();

  sl.registerLazySingleton(() => supabase);
  sl.registerLazySingleton(() => productSupabaseTable);

  await productInjenctionContainer();
}
