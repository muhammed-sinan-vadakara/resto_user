import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/constants/chat_page_constants/chat_page_constants.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/constants/profile/profile_page_constants.dart';
import 'package:resto_user/core/router/router.dart';
import 'package:resto_user/core/themes/light_theme.dart';
import 'package:resto_user/features/chat/data/data%20source/message_data_source.dart';
import 'package:resto_user/features/chat/data/data%20source/message_data_source_impl.dart';
import 'package:resto_user/features/chat/data/repository/message_repository_impl.dart';
import 'package:resto_user/features/chat/domain/repository/message_repository.dart';

final getIt = GetIt.instance;
final appAssetConstants = AppAssetConstants();

void setupDependencies() {
  /// Router dependencies
  getIt.registerSingleton<GoRouter>(router);
  getIt.registerSingleton<ThemeData>(lightTheme);
  getIt.registerSingleton<ChatPageConstants>(ChatPageConstants());
  getIt.registerSingleton<AppAssetConstants>(AppAssetConstants());
  getIt.registerSingleton<ProfilePageConstants>(ProfilePageConstants());
  getIt.registerSingleton<MessageDataSource>(MessageDataSourceImpl());
  getIt.registerSingleton<MessageRepository>(
      MessageRepositoryImpl(GetIt.I.get<MessageDataSource>()));
}
