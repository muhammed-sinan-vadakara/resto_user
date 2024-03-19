import 'package:flutter/material.dart';

class TextFeildWidget extends StatelessWidget {
  final TextEditingController textController;
  const TextFeildWidget({super.key, required this.textController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
    );
  }
}
