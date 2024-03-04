import 'package:bloc/bloc.dart';
import 'package:resto_user/features/chat/data/models/message_model.dart';
import 'package:resto_user/features/chat/data/repository/message_repository.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_event.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final MessageRepository _messageRepository;

  ChatBloc(this._messageRepository) : super(ChatLoading()) {
    on<GetMessages>((event, emit) async {
      try {
        final messages = await _messageRepository.getMessages(event.chatId);
        emit(ChatLoaded(messages));
      } catch (error) {
        emit(ChatError(error.toString()));
      }
    });

    on<SendMessage>((event, emit) async {
      try {
        await _messageRepository.sendMessage(Message(
          message: event.message,
          senderId: 'your_user_id', // Replace with actual user ID
          receiverId: 'friend_user_id', // Replace with actual friend's ID
          timestamp: DateTime.now(),
        ));
        emit(ChatLoading());
      } catch (error) {
        emit(ChatError(error.toString()));
      }
    });
  }
}
