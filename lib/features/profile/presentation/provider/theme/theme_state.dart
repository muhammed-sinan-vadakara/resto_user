part of 'theme_bloc.dart';

class ThemeState {
  final ThemeData theme;

  ThemeState({required this.theme});
}

class InitialState extends ThemeState {
  InitialState() : super(theme: GetIt.I.get<ThemeData>(instanceName: 'light'));
}