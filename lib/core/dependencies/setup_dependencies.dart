import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/router/router.dart';
import 'package:resto_user/core/themes/light_theme.dart';
import 'package:resto_user/features/cart/data/datasource/cart_datasource.dart';
import 'package:resto_user/features/cart/data/datasource/cart_datasource_impl.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  /// Router dependencies
  getIt.registerSingleton<GoRouter>(router);
  getIt.registerSingleton<ThemeData>(lightTheme);
  getIt.registerSingleton<CartDataSource>(CartDataSourceImpl());
}
