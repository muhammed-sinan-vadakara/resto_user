import 'package:resto_user/features/map/data/model/places_api_model.dart';

abstract interface class PlacesAPIDataSource {
  Future<PlacesApiModel?> getAddress(String searchKeyword);
}
