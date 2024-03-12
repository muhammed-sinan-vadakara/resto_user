import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_user/features/profile/presentation/provider/theme/theme_bloc.dart';

part 'toggle_theme_event.dart';
part 'toggle_theme_state.dart';

class ToggleThemeBloc extends Bloc<ToggleThemeEvent, bool> {
  ToggleThemeBloc()
      : super(ThemeBloc().state.theme.brightness == Brightness.dark) {
    on<ClickToggleThemeEvent>((event, emit) {
      return emit(!state);
    });
  }
}
