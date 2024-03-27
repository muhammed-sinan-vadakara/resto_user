import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_entity.freezed.dart';

@freezed
class LocationEntity with _$LocationEntity {
  factory LocationEntity({
    required String title,
    required String address,
    required double lat,
    required double long,
  }) = _LocationEntity;
}
