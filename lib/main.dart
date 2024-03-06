import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/dependencies/setup_dependencies.dart';
import 'package:resto_user/features/profile/presentation/provider/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: GetIt.I.get<GoRouter>(),
          title: 'Flutter Demo',
          theme: state.theme,
        ),
      ),
    );
  }
}
