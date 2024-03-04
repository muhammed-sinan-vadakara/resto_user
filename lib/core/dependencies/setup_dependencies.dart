import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/app_assets/app_asset_constant.dart';
import 'package:resto_user/core/router/router.dart';
import 'package:resto_user/core/themes/light_theme.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  /// Router dependencies
  getIt.registerSingleton<GoRouter>(router);
  getIt.registerSingleton<ThemeData>(lightTheme);
  getIt.registerSingleton<AppAssetConstants>(AppAssetConstants());
}
