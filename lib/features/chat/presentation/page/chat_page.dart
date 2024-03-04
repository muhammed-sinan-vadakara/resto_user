import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  static const routPath = '/chat';
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_add_outlined),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
