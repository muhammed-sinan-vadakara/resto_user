import 'package:flutter/material.dart';

class OtpTextFeildWidget extends StatelessWidget {
  final TextEditingController textController;
  final String hintTexts;
  final dynamic keyboardType;
  const OtpTextFeildWidget(
      {super.key,
      required this.textController,
      required this.hintTexts,
      required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      // onChanged: (value) {
      // if (value.length > 0) {
      // FocusScope.of(context).nextFocus();
      // }
      // },
      // showCursor: true,
      keyboardType: keyboardType,
      controller: textController,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintTexts,
      ),
    );
  }
}
