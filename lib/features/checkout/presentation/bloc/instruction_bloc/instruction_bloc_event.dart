import 'package:resto_user/features/checkout/domain/entity/instruction_entity.dart';

sealed class InstructionEvent {}

class SendInstructionEvent extends InstructionEvent {
  final InstructionEntity message;

  SendInstructionEvent(this.message);
}
