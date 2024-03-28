import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class CounterButtonWidget extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;
  final Color color;

  const CounterButtonWidget({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(context.spaces.space_100),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(context.spaces.space_100),
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: context.spaces.space_150,
              horizontal: context.spaces.space_150,
            ),
            child: icon,
          ),
        ),
      ),
    );
  }
}
