import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class CheckboxWidget extends HookWidget {
  final bool isChecked;
  final VoidCallback? onTap;

  const CheckboxWidget({
    super.key,
    this.isChecked = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: theme.spaces.space_100 * 1.8,
        height: theme.spaces.space_100 * 1.8,
        decoration: BoxDecoration(
          color: isChecked ? theme.colors.secondary : Colors.transparent,
          border: Border.all(
            color: theme.colors.primary,
            width: 1,
          ),
        ),
        child: isChecked
            ? Icon(
                Icons.check,
                size: theme.spaces.space_200,
                color: theme.colors.primary,
              )
            : null,
      ),
    );
  }
}
