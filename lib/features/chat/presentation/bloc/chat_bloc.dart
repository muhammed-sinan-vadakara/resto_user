import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/features/chat/domain/usecases/get_message_usecase.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_event.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_state.dart';
// part 'chat_state.freezed.dart'; // Assuming the generated file is present

class ChatBloc extends Bloc<ChatEvent, MessageBlocState> {
  bool streamLoaded = false;

  ChatBloc() : super(MessageBlocState(error: null, messages: [])) {
    on<GetChatMessages>((event, emit) async {
      // Fix indentation
    });

    // on<SendMessage>((event, emit) async {
    //   try {
    //     await messageRepository.sendMessage(MessageEntity(
    //       message: event.message,
    //       senderId: 'your_user_id',
    //       receiverId: 'friend_user_id',
    //       timestamp: DateTime.now(),
    //     ));

    //     final messages = await messageRepository.getMessages(event.chatId);
    //     emit(ChatLoaded(messages));
    //   } catch (error) {
    //     emit(ChatError(error.toString()));
    //   }
    // });
  }
  Future<void> fetchChatData(
      Emitter<MessageBlocState> emit, String chatId) async {
    if (!streamLoaded) {
      streamLoaded = true;
      final chatStream = GetMessagesUseCase(repository: GetIt.I.get())(chatId);

      await for (final message in chatStream) {
        emit(state.copyWith(messages: message));
      }
    }
  }
}
