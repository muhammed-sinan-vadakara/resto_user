import 'package:bloc/bloc.dart';
import 'package:resto_user/features/chat/domain/entites/message_entity.dart';
import 'package:resto_user/features/chat/domain/repository/message_repository.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_event.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final MessageRepository messageRepository;

  ChatBloc(this.messageRepository) : super(ChatLoading()) {
    on<GetMessages>((event, emit) async {
      try {
        final messages = await messageRepository.getMessages(event.chatId);
        emit(ChatLoaded(messages));
      } catch (error) {
        emit(ChatError(error.toString()));
      }
    });

    on<SendMessage>((event, emit) async {
      try {
        await messageRepository.sendMessage(MessageEntity(
          message: event.message,
          senderId: 'your_user_id',
          receiverId: 'friend_user_id',
          timestamp: DateTime.now(),
        ));

        final messages = await messageRepository.getMessages(event.chatId);
        emit(ChatLoaded(messages));
      } catch (error) {
        emit(ChatError(error.toString()));
      }
    });
  }
}
