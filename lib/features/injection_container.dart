import 'package:get_it/get_it.dart';
import 'package:simply_sell/core/config/supabase_table.dart';
import 'package:simply_sell/features/categories/category_injection_container.dart';
import 'package:simply_sell/features/products/product_injection_container.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  //External
  Supabase supabase = Supabase.instance;
  ProductSupabaseTable productSupabaseTable = ProductSupabaseTable();
  CategorySupabaseTable categorySupabaseTable = CategorySupabaseTable();

  sl.registerLazySingleton(() => supabase);
  sl.registerLazySingleton(() => productSupabaseTable);
  sl.registerLazySingleton(() => categorySupabaseTable);

  await productInjenctionContainer();
  await categoryInjenctionContainer();
}
