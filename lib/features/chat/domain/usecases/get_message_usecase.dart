// ignore_for_file: use_rethrow_when_possible

import 'package:resto_user/core/exceptions/base_exception/base_exception.dart';
import 'package:resto_user/features/chat/domain/entites/message_entity.dart';
import 'package:resto_user/features/chat/domain/repository/message_repository.dart';

class GetMessagesUseCase {
  final MessageRepository repository;

  GetMessagesUseCase(this.repository);

  Future<List<MessageEntity>> call(String chatId) async {
    try {
      final messages = await repository.getMessages(chatId);
      return messages;
    } on BaseException catch (e) {
      throw e;
    } catch (e) {
      throw BaseException('An unexpected error occurred.');
    }
  }
}
