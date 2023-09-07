import '../entities/prediction_entity.dart';
import '../repository/location_repository.dart';

class GetSearchPredictionUsecase {
  final LocationRepository locationRepository;
  GetSearchPredictionUsecase({required this.locationRepository});
  Future<List<PredictionEntity>> call(String input, String uuidToken) =>
      locationRepository.getSearchPrediction(input, uuidToken);
}
