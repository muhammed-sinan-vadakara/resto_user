import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(InitialState()) {
    on<SwitchThemeEvent>((event, emit) {
      final lighTheme = GetIt.I.get<ThemeData>(instanceName: 'lightTheme');
      final darkTheme = GetIt.I.get<ThemeData>(instanceName: 'darkTheme');
      if (state.theme.brightness == Brightness.light) {
        return emit(ThemeState(theme: darkTheme));
      } else {
        return emit(ThemeState(theme: lighTheme));
      }
    });
  }
}
