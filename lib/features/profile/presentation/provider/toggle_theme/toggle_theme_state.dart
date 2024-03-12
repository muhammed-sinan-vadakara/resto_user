part of 'toggle_theme_bloc.dart';

class ToggleThemeState {
  final bool toggle;
  ToggleThemeState({required this.toggle});
}

class InitialState extends ToggleThemeState {
  
  InitialState()
      : super(toggle: ThemeBloc().state.theme.brightness == Brightness.dark);
}
