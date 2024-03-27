import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/constants/authentication/authentication_constant.dart';
import 'package:resto_user/core/constants/home_page/home_constants.dart';
import 'package:resto_user/core/constants/chat_page_constants/chat_page_constants.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/constants/profile/profile_page_constants.dart';
import 'package:resto_user/core/dependencies/bloc_dependencies.dart';
import 'package:resto_user/core/router/router.dart';
import 'package:resto_user/core/themes/dark_theme.dart';
import 'package:resto_user/core/themes/light_theme.dart';
import 'package:resto_user/features/authentication/data/datasource/authentication_datasource.dart';
import 'package:resto_user/features/authentication/data/datasource/authentication_datasource_impl.dart';
import 'package:resto_user/features/authentication/data/datasource/details_add_firestore_datasource.dart';
import 'package:resto_user/features/authentication/data/datasource/details_add_firestore_datasource_impl.dart';
import 'package:resto_user/features/authentication/data/datasource/details_add_storage_datasorce_impl.dart';
import 'package:resto_user/features/authentication/data/datasource/details_add_storage_datasource.dart';
import 'package:resto_user/features/authentication/data/repositoies/auth_repositoies_impl.dart';
import 'package:resto_user/features/authentication/domian/repositories/auth_repository.dart';
import 'package:resto_user/features/home/data/data_source/category_firestore_datasource.dart';
import 'package:resto_user/features/home/data/data_source/category_firestore_datasource_impl.dart';
import 'package:resto_user/features/home/data/data_source/offer_firestore_datasource.dart';
import 'package:resto_user/features/home/data/data_source/offer_firestore_datasource_impl.dart';
import 'package:resto_user/features/home/data/data_source/product_firestore_datasource.dart';
import 'package:resto_user/features/home/data/data_source/product_firestore_datasource_impl.dart';
import 'package:resto_user/features/home/data/repository/category_repository_impl.dart';
import 'package:resto_user/features/home/data/repository/offer_repository_impl.dart';
import 'package:resto_user/features/home/data/repository/product_repository_impl.dart';
import 'package:resto_user/features/home/domain/repository/category_repository.dart';
import 'package:resto_user/features/home/domain/repository/offer_repository.dart';
import 'package:resto_user/features/home/domain/repository/product_repository.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  final getIt = GetIt.instance;

  /// Router dependencies
  getIt.registerSingleton<GoRouter>(router);
  getIt.registerSingleton<ThemeData>(lightTheme);
  getIt.registerSingleton<ChatPageConstants>(ChatPageConstants());
  // getIt.registerSingleton<ThemeData>(lightTheme);
  getIt.registerSingleton<AppAssetConstants>(AppAssetConstants());
  getIt.registerSingleton<ThemeData>(lightTheme, instanceName: 'light');
  getIt.registerSingleton<ThemeData>(darkTheme, instanceName: 'dark');
  getIt.registerSingleton<HomeConstants>(HomeConstants());

  ///category
  getIt.registerSingleton<CategoryFirestoreDatasource>(
    CategoryFirestoreDatasourceImpl(),
  );

  getIt.registerSingleton<CategoryRepo>(
      CategoryRepoImpl(firestoreDataSource: GetIt.I.get()));

  ///products
  getIt.registerSingleton<ProductFirestoreDatasource>(
    ProductFirestoreDatasourceImpl(),
  );
  getIt.registerSingleton<ProductRepo>(
    ProductRepoImpl(
      dataSource: GetIt.I.get(),
    ),
  );

  ///offer
  getIt.registerSingleton<OfferFirestoreDatasource>(
    OfferFirestoreDatasourceImpl(),
  );
  getIt.registerSingleton<OfferRepo>(
    OfferRepoImpl(
      datasource: GetIt.I.get(),
    ),
  );

  ///Profile
  getIt.registerSingleton<ProfilePageConstants>(ProfilePageConstants());

  //Authentication
  getIt.registerSingleton<AuthenticationConstant>(AuthenticationConstant());
  getIt.registerSingleton<FirebaseAuthDataSource>(
      FirebaseAuthDataSourceImpl(FirebaseAuth.instance));
  getIt.registerSingleton<DetailsAddStorageDataSource>(
      DetailsAddStorageDataSourceImpl());
  getIt.registerSingleton<DetailsAddFirestoreDatasource>(
      DetailsAddFirestoreDatasourceImpl());
  getIt.registerSingleton<AuthRepository>(AuthRepositoryImpl(
      datasource: GetIt.I.get(),
      detailsAddDataSource: GetIt.I.get(),
      detailsAddStoragedataSource: GetIt.I.get()));

  setupBlocDependencies();
}
