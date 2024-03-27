import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Text(
      text,
      style: theme.typography.h400,
    );
  }
}
