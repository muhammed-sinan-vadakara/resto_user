import 'package:resto_user/features/chat/data/models/message_model.dart';

abstract class MessageDataSource {
  Stream<List<MessageModel>> getMessages(String chatId);
  Future<void> sendMessage(MessageModel message);
}
