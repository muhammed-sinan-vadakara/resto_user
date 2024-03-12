// ignore_for_file: use_rethrow_when_possible

import 'package:resto_user/core/exceptions/base_exception/base_exception.dart';
import 'package:resto_user/features/chat/domain/entites/message_entity.dart';
import 'package:resto_user/features/chat/domain/repository/message_repository.dart';

class GetMessagesUseCase {
  final MessageRepository repository;

  GetMessagesUseCase({required this.repository});

  Stream<List<MessageEntity>> call(String chatId) async* {
    try {
      final messageStream = repository.getMessages(chatId);

      await for (final messages in messageStream) {
        yield [
          for (final message in messages)
            MessageEntity(
                message: message.message,
                senderId: message.senderId,
                receiverId: message.receiverId,
                timestamp: message.timestamp)
        ];
      }
    } catch (e) {
      throw Exception('No Comming Data');
    }
  }
}
