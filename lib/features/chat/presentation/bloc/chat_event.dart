import 'package:resto_user/features/chat/domain/entites/message_entity.dart';

sealed class ChatEvent {}

class GetChatMessagesEvent extends ChatEvent {
  final List<String> userIds;

  GetChatMessagesEvent(this.userIds);
}

class SendMessageEvent extends ChatEvent {
  final MessageEntity message;

  SendMessageEvent(this.message);
}
