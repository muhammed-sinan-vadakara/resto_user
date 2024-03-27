import 'package:resto_user/features/map/data/model/geocode_api_model.dart';

abstract interface class GeocodeAPIDataSource {
  Future<GeocodeApiModel> getLatLong(String address);
}
