import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class PersonalInfoRowWidget extends StatelessWidget {
  final String keyName;
  final String value;
  const PersonalInfoRowWidget({super.key,required this.keyName,required this.value});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          keyName,
          style: appTheme.typography.h300
              .copyWith(color: appTheme.colors.textDisabled),
        ),
        Text(
          value,
          style: appTheme.typography.h300,
        )
      ],
    );
  }
}
