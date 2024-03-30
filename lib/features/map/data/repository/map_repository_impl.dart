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
      String searchKeyword) async {
    final model = await placedatasource.getAddress(searchKeyword);
    return [
      for (final address in model!.predictions)
        (
          address: address.description,
          title: address.structuredFormatting.mainText
        )
    ];
  }

  @override
  Future<({double lat, double long})> getLatLong(String address) async {
    final latLong = await latlongdatasource.getLatLong(address);
    final locationData = latLong.results.first.geometry.location;

    return (lat: locationData.lat, long: locationData.lng);
  }
}
