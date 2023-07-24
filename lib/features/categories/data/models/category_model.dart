import 'package:simply_sell/features/categories/domain/entity/category_entity.dart';
import 'package:intl/intl.dart';

class CategoryModel extends CategoryEntity {
  CategoryModel(
      {required super.id,
      required super.createdAt,
      required super.categoryName,
      required super.categoryImage});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      createdAt:
          DateFormat("yyyy-MM-ddTHH:mm:ss.SSSSSSZ").parse(json['created_at']),
      categoryName: json['category_name'],
      categoryImage: json['category_image'],
    );
  }
}
