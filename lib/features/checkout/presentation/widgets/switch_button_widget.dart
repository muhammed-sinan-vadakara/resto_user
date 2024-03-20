import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/checkout/presentation/bloc/toggle_switch_bloc/toggle_switch_bloc.dart';
import 'package:resto_user/features/checkout/presentation/bloc/toggle_switch_bloc/toggle_switch_event.dart';

class SwitchWidget extends StatelessWidget {
  final void Function(bool)? onChanged;

  const SwitchWidget({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return BlocBuilder<ToggleSwitchBloc, bool>(
      builder: (context, state) => Transform.scale(
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
          value: state,
          onChanged: onChanged,
        ),
      ),
    );
  }
}

 