import 'package:resto_user/features/checkout/domain/entity/instruction_entity.dart';

abstract class InstructionRepository {
  Future<void> sendInstruction(InstructionEntity instructions);
}
