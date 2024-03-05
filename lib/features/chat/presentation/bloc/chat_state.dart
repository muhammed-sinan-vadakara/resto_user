import 'package:equatable/equatable.dart';
import 'package:resto_user/features/chat/domain/entites/message_entity.dart';

abstract class ChatState extends Equatable {
  const ChatState();

  @override
  List<Object?> get props => [];
}

class ChatLoading extends ChatState {}

class ChatLoaded extends ChatState {
  final List<MessageEntity> messages;

  const ChatLoaded(this.messages);
}

class ChatError extends ChatState {
  final String error;

  const ChatError(this.error);
}
