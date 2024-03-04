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
    // Convert Message to MessageEntity if necessary (assuming Message and MessageEntity have similar properties)
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
    // Convert MessageEntity to Message (assuming matching properties)
    final messageData = MessageModel(
      message: message.message,
      senderId: message.senderId,
      receiverId: message.receiverId,
      timestamp: message.timestamp,
    );

    // Send the converted message to the data source
    await _dataSource.sendMessage(messageData);
  }
}
