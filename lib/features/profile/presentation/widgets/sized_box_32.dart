import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class SizedBox32 extends StatelessWidget {
  const SizedBox32({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.spaces.space_400,
    );
  }
}
