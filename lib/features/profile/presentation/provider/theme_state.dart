part of 'theme_bloc.dart';

class ThemeState {
  final ThemeData theme;

  ThemeState({required this.theme});
}

class InitialState extends ThemeState {
  // final lightTheme = GetIt.I.get<ThemeData>(instanceName: 'darkTheme');
  InitialState()
      : super(theme: GetIt.I.get<ThemeData>(instanceName: 'darkTheme'));
}
