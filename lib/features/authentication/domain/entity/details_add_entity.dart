import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_add_entity.freezed.dart';

@freezed
class DetailsAddEntity with _$DetailsAddEntity {
  const factory DetailsAddEntity({
    required String id,
    required String imagePath,
    required String name,
  }) = _DetailsAddEntity;
}
