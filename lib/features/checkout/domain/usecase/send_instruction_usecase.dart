import 'package:resto_user/features/checkout/domain/entity/instruction_entity.dart';
import 'package:resto_user/features/checkout/domain/repository/instruction_repository.dart';
import '../../../../core/exceptions/base_exception/base_exception.dart';

class SendInstructionUseCase {
  final InstructionRepository repository;

  SendInstructionUseCase(this.repository);

  Future<void> call(InstructionEntity message) async {
    try {
      await repository.sendInstruction(message);
    } on BaseException catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    } catch (e) {
      throw BaseException('An unexpected error occurred.');
    }
  }
}
