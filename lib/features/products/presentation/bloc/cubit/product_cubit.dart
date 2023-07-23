import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/products/domain/entities/product_entity.dart';
import 'package:simply_sell/features/products/domain/usecases/get_products_usecase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../../core/config/supabase_table.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final GetProductsUseCase getProductsUseCase;
  final Supabase supabase;
  final ProductSupabaseTable productSupabaseTable;
  ProductCubit(
      {required this.getProductsUseCase,
      required this.supabase,
      required this.productSupabaseTable})
      : super(ProductStateInitial()) {
    getProducts();
  }

  Future getProducts() async {
    try {
      final products = await getProductsUseCase.call();
      emit(ProductStateDone(products: products));
    } catch (e) {
      emit(ProductStateError(message: "an Error occured"));
    }
  }
}
