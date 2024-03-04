import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class OtpBoxWidget extends StatelessWidget {
  const OtpBoxWidget({super.key, required this.theme});

  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: theme.colors.textDisabled,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: TextField(),
      ),
    );
  }
}