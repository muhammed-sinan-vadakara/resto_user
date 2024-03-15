import 'package:get_it/get_it.dart';
import 'package:resto_user/features/map/data/datasource/map_search_datasource.dart';
import 'package:resto_user/features/map/domain/repository/map_repository.dart';

class SearchMapImpl implements SearchMapRepository {
  final dataSource = GetIt.I.get<SearchMapDatasource>();
  @override
  Future<Map<String, dynamic>> getPlace(String place) async {
    return await dataSource.getPlace(place);
  }
}
