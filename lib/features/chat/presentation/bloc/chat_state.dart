import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/features/chat/domain/entites/message_entity.dart';

part 'chat_state.freezed.dart';

@freezed
class MessageBlocState with _$MessageBlocState {
  factory MessageBlocState({
    required List<MessageEntity>? messages,
    required String? error,
  }) = _MessageBlocState;
}
