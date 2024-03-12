// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/chat_page_constants/chat_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/app_bar_widget.dart';
import 'package:resto_user/features/chat/domain/entites/message_entity.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_bloc.dart';

class ChatPage extends StatefulWidget {
  static const routPath = '/chat';

  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final constants = GetIt.I.get<ChatPageConstants>();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(theme.spaces.space_700),
        child: AppBarWidget(title: constants.txtChat),
      ),
      body: const Column(
        children: [],
      ),
      bottomNavigationBar: MessageInputField(
        controller: _messageController,
      ),
      // BlocBuilder<ChatBloc, MessageBlocState>(

      //     builder: (context, state) {
      //       // if (state is ChatLoading) {
      //       //   print('not load: $state');
      //       //   return const Center(child: CircularProgressIndicator());
      //       // } else
      //       if (state is ChatLoaded) {
      //         print('Messages loaded: ${state.messages}');
      //         return Column(
      //           children: [
      //             // Expanded(
      //             //   // child: ListView.builder(
      //             //   //   reverse: true,
      //             //   //   itemCount: state.messages.length,
      //             //   //   itemBuilder: (context, index) => ChatMessageTile(
      //             //   //     message: state.messages[index],
      //             //   //   ),
      //             //   // ),
      //             // ),
      //             MessageInputField(
      //               controller: _messageController,
      //               onSend: (message) {
      //                 BlocProvider.of<ChatBloc>(context).add(
      //                   SendMessage(message),
      //                 );
      //                 _messageController.clear();
      //               },
      //             ),
      //           ],
      //         );
      //       } else if (state is ChatError) {
      //         return Center(
      //           child: Text('Error: ${state.error}'),
      //         );
      //       } else {
      //         return Column(
      //           children: [
      //             ListView.builder(
      //               reverse: true, itemCount: 3,
      //               // itemCount: state.messages.length,
      //               itemBuilder: (context, index) => const ChatMessageTile(),
      //             ),
      //           ],
      //         );
      //       }
      //     },
      //   ),
    );
  }
}

class ChatError {}

class ChatLoaded {
  final List<MessageEntity> messages;

  const ChatLoaded(this.messages);

  List<Object> get props => [messages];
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
              if (controller.text.isNotEmpty) {}
            },
          ),
        ],
      ),
    );
  }
}

class ChatMessageTile extends StatelessWidget {
  final MessageEntity? message;

  const ChatMessageTile({Key? key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message!.senderId == 'your_user_id'
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: message!.senderId == 'your_user_id'
              ? Colors.blue[100]
              : Colors.grey[200],
        ),
        child: Text(message!.message),
      ),
    );
  }
}
