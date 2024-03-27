import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/chat_page_constants/chat_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/app_bar_widget.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_event.dart';
import 'package:resto_user/features/chat/presentation/widgets/chat_widget.dart';
import 'package:resto_user/features/chat/presentation/widgets/message_text_field.dart';

class ChatPage extends HookWidget {
  static const routPath = '/chat';

  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<ChatPageConstants>();
    final TextEditingController messageController = useTextEditingController();

    useEffect(() {
      Future.delayed(Duration.zero, () {
        context.read<ChatBloc>().add(GetChatMessagesEvent(['user2', 'user1']));
      });

      return null;
    }, []);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(context.spaces.space_700),
        child: AppBarWidget(title: constants.txtChat),
      ),
      body: const ChatWidget(),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: MessageTextField(
          controller: messageController,
        ),
      ),
    );
  }
}
