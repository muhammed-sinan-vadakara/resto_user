import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/utils/shared_preference_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(InitialState()) {
    on<InitialThemeEvent>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      final isDarkActive = prefs.getBool("is_dark") ?? false;
      final lighTheme = GetIt.I.get<ThemeData>(instanceName: 'light');
      final darkTheme = GetIt.I.get<ThemeData>(instanceName: 'dark');
      if (isDarkActive) {
        emit(ThemeState(theme: darkTheme));
        log(isDarkActive.toString());
      } else {
        emit(ThemeState(theme: lighTheme));
        log(isDarkActive.toString());
      }
    });

    on<SwitchThemeEvent>((event, emit) {
      final lighTheme = GetIt.I.get<ThemeData>(instanceName: 'light');
      final darkTheme = GetIt.I.get<ThemeData>(instanceName: 'dark');
      final isDark =
          state.theme == GetIt.I.get<ThemeData>(instanceName: 'dark');
      emit(
          isDark ? ThemeState(theme: lighTheme) : ThemeState(theme: darkTheme));
      SharedPreferencesUtils.setTheme(isDark);
      log(isDark.toString());
    });
  }
}
