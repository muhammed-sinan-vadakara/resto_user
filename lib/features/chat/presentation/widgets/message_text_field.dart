import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_user/features/chat/domain/entites/message_entity.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_event.dart';

class MessageTextField extends StatelessWidget {
  final TextEditingController controller;
  // final Function(String) onSend;

  const MessageTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Type a message...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              if (controller.text.isNotEmpty) {
                final String senderId = FirebaseAuth.instance.currentUser!.uid;

                const String receiverId = 'user1';

                BlocProvider.of<ChatBloc>(context).add(
                  SendMessageEvent(MessageEntity(
                    message: controller.text,
                    senderId: senderId,
                    receiverId: receiverId,
                    timestamp: DateTime.now(),
                  )),
                );
                controller.clear();
              }
            },
          ),
        ],
      ),
    );
  }
}
