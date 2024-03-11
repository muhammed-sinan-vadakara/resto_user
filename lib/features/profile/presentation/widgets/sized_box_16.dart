import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class SizedBox16 extends StatelessWidget {
  const SizedBox16({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppTheme.of(context).spaces.space_200,
    );
  }
}
