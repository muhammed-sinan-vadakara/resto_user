import 'package:equatable/equatable.dart';

abstract class ChatEvent extends Equatable {
  const ChatEvent();

  @override
  List<Object?> get props => [];
}

class GetMessages extends ChatEvent {
  final String chatId;

  const GetMessages(this.chatId);
}

class SendMessage extends ChatEvent {
  final String message;
  final String chatId;

  const SendMessage(this.message, this.chatId);
}
