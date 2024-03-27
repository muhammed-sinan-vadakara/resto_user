import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class RadioButtonWidget extends HookWidget {
  final bool isChecked;
  final VoidCallback? onTap;

  const RadioButtonWidget({
    super.key,
    this.isChecked = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.spaces.space_100 * 1.8,
        height: context.spaces.space_100 * 1.8,
        decoration: BoxDecoration(
          color: isChecked ? context.colors.secondary : Colors.transparent,
          borderRadius: BorderRadius.circular(context.spaces.space_400),
          border: Border.all(
            color: context.colors.primary,
            width: 1,
          ),
        ),
        child: isChecked
            ? Icon(
                Icons.check,
                size: context.spaces.space_200,
                color: context.colors.primary,
              )
            : null,
      ),
    );
  }
}
