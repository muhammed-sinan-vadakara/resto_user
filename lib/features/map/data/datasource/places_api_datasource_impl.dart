import 'package:resto_user/features/map/data/datasource/places_api_datasource.dart';
import 'package:dio/dio.dart';

class PlaceApiDatasourceIMPL implements PlacesAPIDataSource {
  final dio = Dio();

  @override
  Future<List<({String address, String title})>> getAddress(
      String searchKeyword) async {
    Response response = await dio.post(
      'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$searchKeyword&key=AIzaSyAUfzrRvvS7n_RraBH5yqGzloa1CPWdeLk',
      options: Options(
        method: 'POST',
      ),
    );

    return response.data;
  }
}
