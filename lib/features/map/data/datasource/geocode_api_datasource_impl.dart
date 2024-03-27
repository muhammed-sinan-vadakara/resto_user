import 'package:dio/dio.dart';
import 'package:resto_user/features/map/data/datasource/geocode_api_datasource.dart';
import 'package:resto_user/features/map/data/model/geocode_api_model.dart';

class GeocodeAPIDataSourceIMPL implements GeocodeAPIDataSource {
  final dio = Dio();

  @override
  Future<GeocodeApiModel> getLatLong(String address) async {
    Response response = await dio.post(
      'https://maps.googleapis.com/maps/api/geocode/json?address=$address, India&key=AIzaSyAUfzrRvvS7n_RraBH5yqGzloa1CPWdeLk',
      options: Options(
        method: 'POST',
      ),
    );
    return GeocodeApiModel.fromJson(response.data);
  }
}
