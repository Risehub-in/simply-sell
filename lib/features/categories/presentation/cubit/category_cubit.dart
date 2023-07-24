import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/categories/domain/entity/category_entity.dart';
import 'package:simply_sell/features/categories/domain/usecases/get_categories_usecase.dart';
part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final GetCategoriesUsecase getCategoriesUsecase;
  CategoryCubit({required this.getCategoriesUsecase})
      : super(CategoryInitial()) {
    getCategories();
  }

  Future getCategories() async {
    try {
      final categories = await getCategoriesUsecase.call();
      emit(CategoryStateDone(categories: categories));
    } catch (e) {
      emit(CategoryStateError(message: "an Error occured"));
    }
  }
}
