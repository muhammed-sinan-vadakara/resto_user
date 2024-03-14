import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/checkout/presentation/bloc/toggle_switch/toggle_switch_bloc.dart';
import 'package:resto_user/features/checkout/presentation/bloc/toggle_switch/toggle_switch_event.dart';

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return BlocBuilder<ToggleSwitchBloc, bool>(
      builder: (context, state) => Transform.scale(
        scale: .70,
        child: Switch(
          thumbIcon: MaterialStateProperty.all(Icon(
            Icons.circle,
            color: appTheme.colors.primary,
          )),
          trackOutlineColor: MaterialStateProperty.all(appTheme.colors.text),
          activeColor: appTheme.colors.primary,
          thumbColor: MaterialStateProperty.all(appTheme.colors.primary),
          activeTrackColor: appTheme.colors.text,
          inactiveTrackColor: appTheme.colors.secondary,
          value: state,
          onChanged: (value) {
            context.read<ToggleSwitchBloc>().add(ClickToggleSwitchEvent());
          },
        ),
      ),
    );
  }
}
