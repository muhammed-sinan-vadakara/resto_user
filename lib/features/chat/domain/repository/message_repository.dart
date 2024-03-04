import 'package:resto_user/features/chat/data/models/message_model.dart';

abstract class MessageRepository {
  Future<List<Message>> getMessages(String chatId);
  Future<void> sendMessage(Message message);
}
