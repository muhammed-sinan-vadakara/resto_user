import 'package:freezed_annotation/freezed_annotation.dart';

part 'instruction_entity.g.dart';
part 'instruction_entity.freezed.dart';

@freezed
class InstructionEntity with _$InstructionEntity {
  const factory InstructionEntity({
    required String message,
  }) = _InstructionEntity;

  factory InstructionEntity.fromJson(Map<String, dynamic> json) =>
      _$InstructionEntityFromJson(json);
}
