import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/features/checkout/domain/entity/instruction_entity.dart';

part 'instruction_bloc_state.freezed.dart';

@freezed
class InstructionBlocState with _$InstructionBlocState {
  factory InstructionBlocState({
    required List<InstructionEntity>? messages,
    required String? error,
  }) = _InstructionBlocState;
}
