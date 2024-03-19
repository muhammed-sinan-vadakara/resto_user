import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_entity.freezed.dart';

@freezed
class MapEntity with _$MapEntity {
  factory MapEntity({
    required String title,
    required String address,
    required double lat,
    required double long,
  }) = _MapEntity;
}
