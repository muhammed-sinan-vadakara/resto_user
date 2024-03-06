import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/profile/profile_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/profile/presentation/provider/theme_bloc.dart';

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
          thumbIcon: const MaterialStatePropertyAll(Icon(
            Icons.circle,
            color: Colors.transparent,
          )),
          activeColor: appTheme.colors.primary,
          thumbColor: MaterialStatePropertyAll(appTheme.colors.primary),
          // trackColor: MaterialStatePropertyAll(appTheme.colors.textSubtle),
          trackOutlineColor: const MaterialStatePropertyAll(Colors.transparent),
          value: false,
          onChanged: (value) {
            context.read<ThemeBloc>().add(SwitchThemeEvent());
          },
        )
      ],
    );
  }
}
