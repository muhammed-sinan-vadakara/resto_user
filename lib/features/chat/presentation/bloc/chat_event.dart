import 'package:resto_user/features/chat/domain/entites/message_entity.dart';

sealed class ChatEvent {}

class GetChatMessages extends ChatEvent {
  final List<String> userIds;

  GetChatMessages(this.userIds);
}

class SendMessage extends ChatEvent {
  final MessageEntity message;

  SendMessage(this.message);
}
