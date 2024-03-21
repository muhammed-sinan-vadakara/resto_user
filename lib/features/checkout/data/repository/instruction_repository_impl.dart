import 'package:resto_user/features/chat/data/data%20source/message_data_source.dart';
import 'package:resto_user/features/chat/data/models/message_model.dart';
import 'package:resto_user/features/chat/domain/entites/message_entity.dart';
import 'package:resto_user/features/checkout/data/data_source/instruction_firestore_database.dart';
import 'package:resto_user/features/checkout/data/model/instruction_model.dart';
import 'package:resto_user/features/checkout/domain/entity/instruction_entity.dart';
import 'package:resto_user/features/checkout/domain/repository/instruction_repository.dart';

class InstructionRepositoryImpl implements InstructionRepository {
  final InstructionFirestoreDatabase dataSource;

  InstructionRepositoryImpl(this.dataSource);

  @override
  Future<void> sendInstruction(InstructionEntity instructions) async {
    await dataSource
        .sendInstruction(InstructionModel(message: instructions.message));
  }
}
