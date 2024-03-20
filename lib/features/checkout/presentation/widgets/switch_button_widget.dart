import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class SwitchWidget extends StatelessWidget {
  final void Function(bool)? onChanged;
  final bool value;
  const SwitchWidget({super.key, required this.onChanged, required this.value});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return Transform.scale(
      scale: .70,
      child: Switch(
        thumbIcon: MaterialStateProperty.all(Icon(
          Icons.circle,
          color: appTheme.colors.secondary,
        )),
        trackOutlineColor:
            MaterialStatePropertyAll(appTheme.colors.textDisabled),
        activeColor: appTheme.colors.primary,
        thumbColor: MaterialStateProperty.all(appTheme.colors.secondary),
        activeTrackColor: appTheme.colors.text,
        inactiveTrackColor: appTheme.colors.textDisabled,
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
