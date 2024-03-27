import 'package:resto_user/features/map/data/datasource/places_api_datasource.dart';
import 'package:dio/dio.dart';
import 'package:resto_user/features/map/data/model/places_api_model.dart';

class PlaceApiDatasourceIMPL implements PlacesAPIDataSource {
  final dio = Dio();

  @override
  Future<PlacesApiModel> getAddress(String searchKeyword) async {
    Response response = await dio.post(
      'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$searchKeyword&key=AIzaSyAUfzrRvvS7n_RraBH5yqGzloa1CPWdeLk',
      options: Options(
        method: 'POST',
      ),
    );
    // final data = response.data;
    //     final datas = <PlacesApiModel>[];
    //     for (final result in data['placesapimodel']) {
    //       datas.add(
    //         PlacesApiModel.fromJson(result
    //       );

    // final List<String> descriptions = List<String>.from(response
    //     .data['predictions']
    //     .map((prediction) => prediction['description']));

    // final PlacesApiModel placesApiModel = PlacesApiModel(
    //   predictions: descriptions
    //       .map((description) => Prediction(
    //           description: description,
    //           placeId: '',
    //           matchedSubstrings: [],
    //           reference: '',
    //           structuredFormatting:
    //               StructuredFormatting.fromJson(response.data),
    //           terms: [],
    //           types: []))
    //       .toList(),
    //   status: response.data['status'],
    // );

    return PlacesApiModel.fromJson(response.data);
  }
}
