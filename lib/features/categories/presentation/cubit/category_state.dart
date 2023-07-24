part of 'category_cubit.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

class CategoryInitial extends CategoryState {}

class CategoryStateError extends CategoryState {
  final String? message;

  CategoryStateError({this.message});

  @override
  List<Object> get props => [message!];
}

class CategoryStateDone extends CategoryState {
  final List<CategoryEntity> categories;

  CategoryStateDone({required this.categories});

  @override
  List<Object> get props => [categories];
}
