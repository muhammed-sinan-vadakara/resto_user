import 'package:resto_user/features/chat/domain/repository/message_repository.dart';
import '../../../../core/exceptions/base_exception/base_exception.dart';
import '../entites/message_entity.dart';

class SendMessageUseCase {
  final MessageRepository repository;

  SendMessageUseCase(this.repository);

  Future<void> call(MessageEntity message) async {
    try {
      await repository.sendMessage(message);
    } on BaseException catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    } catch (e) {
      throw BaseException('An unexpected error occurred.');
    }
  }
}
