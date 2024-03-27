import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/profile/profile_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/profile/presentation/provider/theme/theme_bloc.dart';
import 'package:resto_user/features/profile/presentation/provider/toggle_theme/toggle_theme_bloc.dart';

class DarkThemeWidget extends StatelessWidget {
  const DarkThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<ProfilePageConstants>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          constants.txtDarkTheme,
          style: context.typography.h300,
        ),
        BlocBuilder<ToggleThemeBloc, bool>(
          builder: (context, state) => Switch(
            thumbIcon: const MaterialStatePropertyAll(Icon(
              Icons.circle,
              color: Colors.transparent,
            )),
            activeColor: context.colors.primary,
            thumbColor: MaterialStatePropertyAll(context.colors.primary),
            trackOutlineColor:
                const MaterialStatePropertyAll(Colors.transparent),
            value: state,
            onChanged: (value) {
              context.read<ToggleThemeBloc>().add(ClickToggleThemeEvent());
              context.read<ThemeBloc>().add(SwitchThemeEvent());
            },
          ),
        ),
      ],
    );
  }
}
