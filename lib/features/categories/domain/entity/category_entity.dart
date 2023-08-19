import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final int id;
  final String categoryName;
  final String categoryImage;

  CategoryEntity({
    required this.id,
    required this.categoryName,
    required this.categoryImage,
  });

  @override
  List<Object?> get props => [
        id,
        categoryName,
        categoryImage,
      ];
}
