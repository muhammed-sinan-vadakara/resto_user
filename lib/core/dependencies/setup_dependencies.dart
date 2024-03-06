import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/constants/history/my_order_page_constants.dart';
import 'package:resto_user/core/constants/profile/profile_page_constants.dart';
import 'package:resto_user/core/router/router.dart';
import 'package:resto_user/core/themes/light_theme.dart';

final getIt = GetIt.instance;
final appAssetConstants = AppAssetConstants();

void setupDependencies() {
  /// Router dependencies
  getIt.registerSingleton<GoRouter>(router);
  getIt.registerSingleton<ThemeData>(lightTheme);
  getIt.registerSingleton<AppAssetConstants>(AppAssetConstants());
  getIt.registerSingleton<ProfilePageConstants>(ProfilePageConstants());
  getIt.registerSingleton<MyOrderPageConstants>(MyOrderPageConstants());
}
