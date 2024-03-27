import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/features/chat/domain/usecases/get_message_usecase.dart';
import 'package:resto_user/features/chat/domain/usecases/send_message_usecase.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_event.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_state.dart';
import '../../domain/repository/message_repository.dart';

class ChatBloc extends Bloc<ChatEvent, MessageBlocState> {
  bool streamLoaded = false;

  ChatBloc() : super(MessageBlocState(error: null, messages: null)) {
    on<GetChatMessagesEvent>(fetchChatData);
    on<SendMessageEvent>(sendChatData);
  }

  Future<void> fetchChatData(
      GetChatMessagesEvent event, Emitter<MessageBlocState> emit) async {
    if (!streamLoaded) {
      streamLoaded = true;

      try {
        final chatStream = GetMessagesUseCase(
            repository: GetIt.I.get<MessageRepository>())(event.userIds);

        await for (final message in chatStream) {
          emit(state.copyWith(messages: message));
        }
      } on Exception catch (e) {
        emit(state.copyWith(error: e.toString()));
      }
    }
  }

  Future<void> sendChatData(
      SendMessageEvent event, Emitter<MessageBlocState> emit) async {
    await SendMessageUseCase(GetIt.I.get())(event.message);
  }
}
