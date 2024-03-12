import 'package:dio/dio.dart';
import 'package:resto_user/features/map/data/datasource/map_search_datasource.dart';

class SearchMapImpl implements SearchMap {
  static final dio = Dio();

  @override
  Future<String> searchplace(String place) {
    throw UnimplementedError();
  }
}
