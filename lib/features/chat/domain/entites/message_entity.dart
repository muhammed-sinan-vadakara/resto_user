import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_entity.g.dart';
part 'message_entity.freezed.dart';

@freezed
class MessageEntity with _$MessageEntity {
  const factory MessageEntity({
    required String message,
    required String senderId,
    required String receiverId,
    required DateTime timestamp,
  }) = _MessageEntity;

  factory MessageEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageEntityFromJson(json);
}
