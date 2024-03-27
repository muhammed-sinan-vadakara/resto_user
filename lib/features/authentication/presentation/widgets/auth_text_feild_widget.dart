import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class AuthTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController Controller;
  final bool? enabled;
  final bool? cursor;
  final void Function(String)? onChanged;
  final TextStyle? style;
  final dynamic keyboardType;
  const AuthTextFieldWidget(
      {super.key,
      required this.hintText,
      this.enabled,
      this.onChanged,
      required this.style,
      this.keyboardType,
      this.cursor,
      required this.Controller});
  @override
  Widget build(BuildContext context) {
    final apptheme = (context);
    return TextField(
      controller: Controller,
      showCursor: cursor,
      onChanged: onChanged,
      keyboardType: keyboardType,
      enabled: enabled,
      style: style,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: apptheme.typography.h400
            .copyWith(color: apptheme.colors.textDisabled),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            apptheme.spaces.space_100,
          ),
          borderSide: const BorderSide(
            width: 0.1,
          ),
        ),
      ),
    );
  }
}
