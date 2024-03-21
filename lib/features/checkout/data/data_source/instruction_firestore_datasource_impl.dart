import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto_user/features/checkout/data/data_source/instruction_firestore_database.dart';
import 'package:resto_user/features/checkout/data/model/instruction_model.dart';

class MessageDataSourceImpl implements InstructionFirestoreDatabase {
  final collection = FirebaseFirestore.instance
      .collection('Instruction')
      .withConverter(
          fromFirestore: InstructionModel.fromFirestore,
          toFirestore: (model, _) => model.toFirestore());

  @override
  Future<void> sendInstruction(InstructionModel instruction) async {
    final docId = collection.add(instruction);
    await docId;
  }
}
