import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      onChanged: (value) {
        if (value.isNotEmpty) {
          FocusScope.of(context).nextFocus();
        } else {
          FocusScope.of(context).previousFocus();
        }
      },
      showCursor: true,
      keyboardType: keyboardType,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(1),
      ],
      controller: textController,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintTexts,
      ),
    );
  }
}
