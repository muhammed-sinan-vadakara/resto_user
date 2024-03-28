import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class RadioButtonWidget extends HookWidget {
  final String groupValue;
  final String value;
  final bool isChecked;
  final void Function(String?)? onChanged;

  const RadioButtonWidget({
    super.key,
    required this.groupValue,
    required this.value,
    this.isChecked = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Radio<String>(
      activeColor: context.colors.primary,
      fillColor: MaterialStatePropertyAll(context.colors.primary),
      visualDensity: VisualDensity.compact,
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}
