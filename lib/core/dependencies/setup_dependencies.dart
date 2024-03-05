import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constant.dart';
import 'package:resto_user/core/constants/home_page/home_constants.dart';
import 'package:resto_user/core/router/router.dart';
import 'package:resto_user/core/themes/dark_theme.dart';
import 'package:resto_user/core/themes/light_theme.dart';
import 'package:resto_user/features/home/data/data_source/category_firestore_datasource.dart';
import 'package:resto_user/features/home/data/data_source/category_firestore_datasource_impl.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  /// Router dependencies
  getIt.registerSingleton<GoRouter>(router);
  getIt.registerSingleton<AppAssetConstants>(AppAssetConstants());
  getIt.registerSingleton<ThemeData>(lightTheme, instanceName: 'light');
  getIt.registerSingleton<ThemeData>(darkTheme, instanceName: 'dark');
  getIt.registerSingleton<HomeConstants>(HomeConstants());
  getIt.registerSingleton<CategoryFirestoreDatasource>(
      CategoryFirestoreDatasourceImpl());
}
