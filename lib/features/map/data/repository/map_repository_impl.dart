import 'package:get_it/get_it.dart';
import 'package:resto_user/features/map/data/datasource/geocode_api_datasource.dart';
import 'package:resto_user/features/map/data/datasource/places_api_datasource.dart';
import 'package:resto_user/features/map/domain/repository/map_repository.dart';

class MapAPIRepositoryIMPL implements MapAPIRepository {
  final PlacesAPIDataSource placedatasource;
  final GeocodeAPIDataSource latlongdatasource;

  MapAPIRepositoryIMPL(
      {required this.latlongdatasource, required this.placedatasource});
  @override
  Future<List<({String address, String title})>> getAddress(
      String searchKeyword) {
    return placedatasource.getAddress(searchKeyword);
  }

  @override
  Future<({double lat, double long})> getLatLong(String address) {
    return latlongdatasource.getLatLong(address);
  }
}
