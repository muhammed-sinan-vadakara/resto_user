import 'package:resto_user/features/chat/domain/entites/message_entity.dart';

abstract class MessageRepository {
  Stream<List<MessageEntity>> getMessages(String chatId);
  Future<void> sendMessage(MessageEntity message);
}
