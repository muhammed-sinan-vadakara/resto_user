import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.g.dart';
part 'message_model.freezed.dart';

@freezed
class MessageModel with _$MessageModel {
  const MessageModel._();

  const factory MessageModel({
    required String message,
    required String senderId,
    required String receiverId,
    required DateTime timestamp,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  factory MessageModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data()!;
    data['id'] = snapshot.id;
    return MessageModel.fromJson(data);
  }
  Map<String, dynamic> toFirestore() {
    return toJson()..remove('id');
  }
}
