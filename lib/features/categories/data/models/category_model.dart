import 'package:simply_sell/features/categories/domain/entity/category_entity.dart';

class CategoryModel extends CategoryEntity {
  CategoryModel(
      {required super.id,
      required super.categoryName,
      required super.categoryImage});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      categoryName: json['category_name'],
      categoryImage: json['category_image'],
    );
  }
}
