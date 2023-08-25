import 'dart:async';
import 'package:get_it/get_it.dart';
import 'package:simply_sell/core/config/supabase_table.dart';
import 'package:simply_sell/features/auth/auth_injection_container.dart';
import 'package:simply_sell/features/cart/cart_injection_container.dart';
import 'package:simply_sell/features/categories/category_injection_container.dart';
import 'package:simply_sell/features/products/product_injection_container.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../core/config/hasura_service.dart';
import 'cart/data/models/cart_model.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  //External
  Supabase supabase = Supabase.instance;
  ProductSupabaseTable productSupabaseTable = ProductSupabaseTable();
  CategorySupabaseTable categorySupabaseTable = CategorySupabaseTable();
  HasuraService hasuraService = HasuraService(supabase: supabase);
  StreamController<List<CartModel>> cartStream = StreamController();

  sl.registerLazySingleton(() => supabase);
  sl.registerLazySingleton(() => productSupabaseTable);
  sl.registerLazySingleton(() => categorySupabaseTable);
  sl.registerLazySingleton(() => hasuraService);
  sl.registerLazySingleton(() => cartStream);

  await productInjenctionContainer();
  await categoryInjenctionContainer();
  await authInjectionContainer();
  await cartInjectionContainer();
}
