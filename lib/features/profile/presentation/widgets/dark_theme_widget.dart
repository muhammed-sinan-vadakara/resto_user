import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/profile/profile_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class DarkThemeWidget extends StatelessWidget {
  const DarkThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final constants = GetIt.I.get<ProfilePageConstants>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          constants.txtDarkTheme,
          style: appTheme.typography.h300,
        ),
        Switch(
          thumbIcon: MaterialStatePropertyAll(Icon(
            Icons.circle,
            color: appTheme.colors.primary,
          )),
          trackOutlineColor: MaterialStatePropertyAll(appTheme.colors.text),
          thumbColor: MaterialStatePropertyAll(appTheme.colors.primary),
          trackColor: MaterialStatePropertyAll(appTheme.colors.secondary),
          value: false,
          onChanged: (value) {
            value = true;
          },
        )
      ],
    );
  }
}
