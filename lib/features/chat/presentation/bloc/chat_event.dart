import 'package:freezed_annotation/freezed_annotation.dart';

abstract class ChatEvent {}

class GetChatMessages extends ChatEvent {
  final String chatId;

  GetChatMessages(this.chatId);
}

class SendMessage extends ChatEvent {
  final String message;

  SendMessage(this.message);
}
