import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

@immutable
class Message extends Equatable {
  final String message;
  final String senderId;
  final String receiverId;
  final DateTime timestamp;

  const Message({
    required this.message,
    required this.senderId,
    required this.receiverId,
    required this.timestamp,
  });

  @override
  List<Object?> get props => [message, senderId, receiverId, timestamp];
}
