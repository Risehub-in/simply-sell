import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final int id;
  final DateTime createdAt;
  final String categoryName;
  final String categoryImage;

  CategoryEntity({
    required this.id,
    required this.createdAt,
    required this.categoryName,
    required this.categoryImage,
  });

  @override
  List<Object?> get props => [
        id,
        createdAt,
        categoryName,
        categoryImage,
      ];
}
