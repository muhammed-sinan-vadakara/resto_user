import 'package:resto_user/features/chat/data/data%20source/message_data_source.dart';
import 'package:resto_user/features/chat/data/models/message_model.dart';
import 'package:resto_user/features/chat/domain/entites/message_entity.dart';

import '../../domain/repository/message_repository.dart';

class MessageRepositoryImpl implements MessageRepository {
  final MessageDataSource dataSource;

  MessageRepositoryImpl(this.dataSource);

  @override
  Stream<List<MessageEntity>> getMessages(String chatId) async* {
    final message = dataSource.getMessages(chatId);
    await for (final snapshot in message) {
      final docs = snapshot;
      yield [
        for (final chat in docs)
          MessageEntity(
              message: chat.message,
              senderId: chat.senderId,
              receiverId: chat.receiverId,
              timestamp: chat.timestamp)
      ];
    }
  }

  @override
  Future<void> sendMessage(MessageEntity message) async {
    await dataSource.sendMessage(
      MessageModel(
          message: message.message,
          senderId: message.senderId,
          receiverId: message.receiverId,
          timestamp: message.timestamp),
    );
  }
}
