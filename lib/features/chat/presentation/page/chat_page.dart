// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/chat_page_constants/chat_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/app_bar_widget.dart';
import 'package:resto_user/features/chat/domain/entites/message_entity.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_event.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_state.dart';

class ChatPage extends HookWidget {
  static const routPath = '/chat';

  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final constants = GetIt.I.get<ChatPageConstants>();
    final TextEditingController _messageController = useTextEditingController();

    useEffect(() {
      Future.delayed(Duration.zero, () {
        context.read<ChatBloc>().add(GetChatMessages(['user2', 'user1']));
      });

      return null;
    }, []);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(theme.spaces.space_700),
        child: AppBarWidget(title: constants.txtChat),
      ),
      body: BlocBuilder<ChatBloc, MessageBlocState>(
        builder: (context, state) {
          if (state.error != null) {
            return Center(child: Text(state.error!));
          }

          if (state.messages == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              reverse: true,
              itemCount: state.messages!.length,
              itemBuilder: (context, index) {
                final message = state.messages![index];

                return Align(
                  alignment: message.receiverId == "user1"
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.all(theme.spaces.space_200),
                    margin: EdgeInsets.only(
                      top: 8.0,
                      bottom: 8.0,
                      left: message.senderId != "user1" ? 16.0 : 8.0,
                      right: message.senderId != "user1" ? 8.0 : 16.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(theme.spaces.space_100),
                      color: message.senderId == "user1"
                          ? Colors.blue[100]
                          : Colors.grey[200],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(message.receiverId),

                        Text(message.message),
                        // SizedBox(height: 4.0),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              ('${message.timestamp.hour}:${message.timestamp.minute}'),
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: MessageInputField(
          controller: _messageController,
        ),
      ),
    );
  }
}

class MessageInputField extends StatelessWidget {
  final TextEditingController controller;
  // final Function(String) onSend;

  const MessageInputField({
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

                const String receiverId = 'recipient_user_id';

                BlocProvider.of<ChatBloc>(context).add(
                  SendMessage(MessageEntity(
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

// class ChatMessageTile extends StatelessWidget {
//   final MessageEntity? message;

//   const ChatMessageTile({Key? key, this.message}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: message!.senderId == 'your_user_id'
//           ? Alignment.centerRight
//           : Alignment.centerLeft,
//       child: Container(
//         padding: const EdgeInsets.all(16.0),
//         margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.0),
//           color: message!.senderId == 'your_user_id'
//               ? Colors.blue[100]
//               : Colors.grey[200],
//         ),
//         child: Text(message!.message),
//       ),
//     );
//   }
// }
