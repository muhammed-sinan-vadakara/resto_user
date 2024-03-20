import 'package:resto_user/features/map/domain/repository/map_repository.dart';

final class MapAPIUsecase {
  final MapAPIRepository repository;

  MapAPIUsecase({required this.repository});
  Future<Map<String, dynamic>> call(String place) async {
    try {} catch (e) {}
    throw Exception("Error");
  }
}
