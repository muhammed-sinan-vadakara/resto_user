import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class CheckboxWidget extends HookWidget {
  final bool isChecked;
  final void Function(bool?) onChanged;

  const CheckboxWidget({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      visualDensity: VisualDensity.compact,
      activeColor: context.colors.primary,
      side: BorderSide(
        width: 2,
        color: context.colors.primary,
      ),
      value: isChecked,
      onChanged: onChanged,
    );
  }
}
