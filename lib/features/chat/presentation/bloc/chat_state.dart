import 'package:equatable/equatable.dart';
import 'package:resto_user/features/chat/data/models/message_model.dart';

abstract class ChatState extends Equatable {
  const ChatState();

  @override
  List<Object?> get props => [];
}

class ChatLoading extends ChatState {
  // final List<Message> messages;

  // const ChatLoading(this.messages);
}

class ChatLoaded extends ChatState {
  final List<Message> messages;

  const ChatLoaded(this.messages);
}

class ChatError extends ChatState {
  final String error;

  const ChatError(this.error);
}
