// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'geocode_api_model.freezed.dart';
part 'geocode_api_model.g.dart';

GeocodeApiModel movievediosFromJson(String str) =>
    GeocodeApiModel.fromJson(json.decode(str));

String movievediosToJson(GeocodeApiModel data) => json.encode(data.toJson());

@freezed
class GeocodeApiModel with _$GeocodeApiModel {
  const factory GeocodeApiModel({
    required List<Result> results,
    required String status,
  }) = _GeocodeApiModel;

  factory GeocodeApiModel.fromJson(Map<String, dynamic> json) =>
      _$GeocodeApiModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @JsonKey(name: 'address_components')
    required List<AddressComponent> addressComponents,
    @JsonKey(name: 'formatted_address') required String formattedAddress,
    @JsonKey(name: 'geometry') required Geometry geometry,
    @JsonKey(name: 'place_id') required String placeId,
    @JsonKey(name: 'types') required List<String> types,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class AddressComponent with _$AddressComponent {
  const factory AddressComponent({
    @JsonKey(name: 'long_name') required String longName,
    @JsonKey(name: 'short_name') required String shortName,
    required List<String> types,
  }) = _AddressComponent;

  factory AddressComponent.fromJson(Map<String, dynamic> json) =>
      _$AddressComponentFromJson(json);
}

@freezed
class Geometry with _$Geometry {
  const factory Geometry({
    @JsonKey(name: 'location') required Location location,
    @JsonKey(name: 'location_type') required String locationType,
    @JsonKey(name: 'viewport') required Viewport viewport,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required double lat,
    required double lng,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Viewport with _$Viewport {
  const factory Viewport({
    required Location northeast,
    required Location southwest,
  }) = _Viewport;

  factory Viewport.fromJson(Map<String, dynamic> json) =>
      _$ViewportFromJson(json);
}
