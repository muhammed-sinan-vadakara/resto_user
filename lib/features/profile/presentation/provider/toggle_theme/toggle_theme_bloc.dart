import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/features/profile/presentation/provider/theme/theme_bloc.dart';

part 'toggle_theme_event.dart';

class ToggleThemeBloc extends Bloc<ToggleThemeEvent, bool> {
  ToggleThemeBloc()
      : super(GetIt.I.get<ThemeBloc>().state.theme.brightness ==
            Brightness.dark) {
    on<ClickToggleThemeEvent>((event, emit) {
      emit(!state);
      log('toggle state $state');
    });
  }
}