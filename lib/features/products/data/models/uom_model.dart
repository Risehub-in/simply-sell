import 'package:json_annotation/json_annotation.dart';
import 'package:simply_sell/features/products/domain/entities/uom_entity.dart';

@JsonSerializable()
class UomModel extends UomEntity {
  UomModel({required super.uomName});

  factory UomModel.fromJson(Map<String, dynamic> json) {
    return UomModel(
      uomName: json['uom_name'],
    );
  }
}
