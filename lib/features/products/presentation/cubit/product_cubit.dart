import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/products/domain/entities/product_entity.dart';
import 'package:simply_sell/features/products/domain/usecases/get_products_by_category_id_usecase.dart';
part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final GetProductsByCategoryIdUsecase getProductsByCategoryIdUsecase;
  ProductCubit({
    required this.getProductsByCategoryIdUsecase,
  }) : super(ProductStateInitial());

  Future getProductsByCategoryId(int category_id) async {
    try {
      emit(ProductStateInitial());
      final products = await getProductsByCategoryIdUsecase.call(category_id);
      emit(ProductStateDone(products: products));
    } catch (e) {
      emit(ProductStateError(message: e.toString()));
    }
  }
}
