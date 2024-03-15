import 'package:dio/dio.dart';
import 'package:resto_user/features/map/data/datasource/map_search_datasource.dart';

class SearchMapDataSourceImpl implements SearchMapDatasource {
  static final dio = Dio();
  final key = 'AIzaSyAUfzrRvvS7n_RraBH5yqGzloa1CPWdeLk';

  @override
  Future<Map<String, dynamic>> getPlace(String input) async {
    final String url =
        'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype=textquery&key=$key';
    var respose = await dio.get(url);
    var json = respose.data;
    var placeId = json['candidates'][0]['place_id'] as String;
    final String urll =
        'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?place_id=$placeId&key=$key';
    var resposes = await dio.get(urll);
    var jsonn = resposes.data;
    var results = jsonn['result'] as Map<String, dynamic>;
    print(results);
    return results;
  }
}
