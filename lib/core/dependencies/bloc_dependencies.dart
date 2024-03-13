import 'package:get_it/get_it.dart';
import 'package:resto_user/features/profile/presentation/provider/theme/theme_bloc.dart';
import 'package:resto_user/features/profile/presentation/provider/toggle_theme/toggle_theme_bloc.dart';

void setupBlocDependencies() {
  final getIt = GetIt.I;

  /// Profile feature blocs
  getIt.registerSingleton<ThemeBloc>(ThemeBloc());
  getIt.registerSingleton<ToggleThemeBloc>(ToggleThemeBloc());
}
