import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.typography.h300,
    );
  }
}
