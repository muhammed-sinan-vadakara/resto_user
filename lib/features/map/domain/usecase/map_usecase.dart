import 'package:resto_user/features/map/domain/repository/map_repository.dart';

final class SearchMapUsecase {
  final SearchMapRepository repository;

  SearchMapUsecase({required this.repository});
  Future<Map<String, dynamic>> call(String place) async {
    try {
      return await repository.getPlace(place);
    } catch (e) {
      throw Exception("Error");
    }
  }
}
