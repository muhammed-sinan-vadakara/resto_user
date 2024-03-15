import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_state.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, MessageBlocState>(
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

              return MessageContainer(message: message);
            },
          );
        }
      },
    );
  }
}

class MessageContainer extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final message;

  const MessageContainer({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Align(
      alignment: message.receiverId == "user1"
          ? Alignment.centerLeft
          : Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(theme.spaces.space_200),
        margin: EdgeInsets.only(
          top: theme.spaces.space_100,
          bottom: theme.spaces.space_100,
          left: message.senderId != "user1"
              ? theme.spaces.space_200
              : theme.spaces.space_100,
          right: message.senderId != "user1"
              ? theme.spaces.space_100
              : theme.spaces.space_200,
        ),
        decoration: BoxDecoration(
          borderRadius: message.receiverId == "user1"
              ? BorderRadius.only(
                  topRight: Radius.circular(theme.spaces.space_200),
                  bottomLeft: Radius.circular(theme.spaces.space_200),
                  bottomRight: Radius.circular(theme.spaces.space_200))
              : BorderRadius.only(
                  topLeft: Radius.circular(theme.spaces.space_200),
                  bottomLeft: Radius.circular(theme.spaces.space_200),
                  bottomRight: Radius.circular(theme.spaces.space_200)),
          color: message.senderId == "user1"
              ? theme.colors.primary
              : Colors.grey[200],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.message,
              style: message.receiverId == 'user1'
                  ? theme.typography.h400.copyWith(color: theme.colors.text)
                  : theme.typography.h400
                      .copyWith(color: theme.colors.secondary),
            ),
            Text(
              ('${message.timestamp.hour}:${message.timestamp.minute}'),
              style: message.receiverId == 'user1'
                  ? theme.typography.h100.copyWith(color: theme.colors.text)
                  : theme.typography.h100
                      .copyWith(color: theme.colors.secondary),
            ),
          ],
        ),
      ),
    );
  }
}
