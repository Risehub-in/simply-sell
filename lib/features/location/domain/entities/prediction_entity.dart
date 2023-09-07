import 'package:equatable/equatable.dart';

class PredictionEntity extends Equatable {
  final String mainText;
  final String secondaryText;
  final String placeId;
  final String description;

  PredictionEntity({
    required this.mainText,
    required this.secondaryText,
    required this.placeId,
    required this.description,
  });

  @override
  List<Object?> get props => [
        mainText,
        secondaryText,
        placeId,
        description,
      ];
}
