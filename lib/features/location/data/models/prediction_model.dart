import '../../domain/entities/prediction_entity.dart';

class PredictionModel extends PredictionEntity {
  PredictionModel({
    required super.mainText,
    required super.secondaryText,
    required super.placeId,
    required super.description,
  });

  factory PredictionModel.fromJson(Map<String, dynamic> json) {
    return PredictionModel(
      mainText: json['structured_formatting']['main_text'] as String,
      secondaryText: json['structured_formatting']['secondary_text'] as String,
      placeId: json['place_id'] as String,
      description: json['description'] as String,
    );
  }
}
