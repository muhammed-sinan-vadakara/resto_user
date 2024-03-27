import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class PersonalInfoRowWidget extends StatelessWidget {
  final String keyName;
  final String value;
  const PersonalInfoRowWidget(
      {super.key, required this.keyName, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          keyName,
          style: context.typography.h300
              .copyWith(color: context.colors.textDisabled),
        ),
        Text(
          value,
          style: context.typography.h300,
        )
      ],
    );
  }
}
