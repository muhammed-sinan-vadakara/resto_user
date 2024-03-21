import 'package:resto_user/features/checkout/data/model/instruction_model.dart';

abstract class InstructionFirestoreDatabase {
  Future<void> sendInstruction(InstructionModel message);
}
