import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/features/chat/domain/entites/message_entity.dart';

abstract class ChatEvent {}

class GetChatMessages extends ChatEvent {
  final String chatId;

  GetChatMessages(this.chatId);
}

class SendMessage extends ChatEvent {
  final MessageEntity message;

  SendMessage(this.message);
}
