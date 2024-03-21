import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required String title,
    required String address,
    required double lat,
    required double long,
  }) = _LocationModel;
}
