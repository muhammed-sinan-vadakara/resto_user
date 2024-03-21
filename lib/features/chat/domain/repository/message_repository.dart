import 'package:resto_user/features/chat/domain/entites/message_entity.dart';

abstract class MessageRepository {
  Stream<List<MessageEntity>> getMessages(List<String> userIds);
  Future<void> sendMessage(MessageEntity message);
}
