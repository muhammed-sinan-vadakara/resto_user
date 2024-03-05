import 'package:resto_user/features/chat/data/data%20source/message_data_source.dart';
import 'package:resto_user/features/chat/data/models/message_model.dart';
import 'package:resto_user/features/chat/domain/entites/message_entity.dart';

import '../../domain/repository/message_repository.dart';

class MessageRepositoryImpl implements MessageRepository {
  final MessageDataSource _dataSource;

  MessageRepositoryImpl(this._dataSource);

  @override
  Future<List<MessageEntity>> getMessages(String chatId) async {
    final messages = await _dataSource.getMessages(chatId);

    return messages
        .map((message) => MessageEntity(
              message: message.message,
              senderId: message.senderId,
              receiverId: message.receiverId,
              timestamp: message.timestamp,
            ))
        .toList();
  }

  @override
  @override
  Future<void> sendMessage(MessageEntity message) async {
    final messageData = MessageModel(
      message: message.message,
      senderId: message.senderId,
      receiverId: message.receiverId,
      timestamp: message.timestamp,
    );

    await _dataSource.sendMessage(messageData);
  }
}
