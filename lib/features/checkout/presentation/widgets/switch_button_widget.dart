import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class SwitchWidget extends StatelessWidget {
  final void Function(bool)? onChanged;
  final bool value;
  const SwitchWidget({super.key, required this.onChanged, required this.value});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: .70,
      child: Switch(
        thumbIcon: MaterialStateProperty.all(Icon(
          Icons.circle,
          color: context.colors.secondary,
        )),
        trackOutlineColor:
            MaterialStatePropertyAll(context.colors.textDisabled),
        activeColor: context.colors.primary,
        thumbColor: MaterialStateProperty.all(context.colors.secondary),
        activeTrackColor: context.colors.text,
        inactiveTrackColor: context.colors.textDisabled,
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
