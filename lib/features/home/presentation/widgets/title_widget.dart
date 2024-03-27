import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: context.typography.h600,
        ),
      ],
    );
  }
}
