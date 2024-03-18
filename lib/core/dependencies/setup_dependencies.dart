import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/constants/home_page/home_constants.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/constants/profile/profile_page_constants.dart';
import 'package:resto_user/core/dependencies/bloc_dependencies.dart';
import 'package:resto_user/core/router/router.dart';
import 'package:resto_user/core/themes/dark_theme.dart';
import 'package:resto_user/core/themes/light_theme.dart';
import 'package:resto_user/features/checkout/data/data_source/coupon_firestore_datasource.dart';
import 'package:resto_user/features/checkout/data/data_source/coupon_firestore_datasource_impl.dart';
import 'package:resto_user/features/checkout/data/repository/coupon_repository_impl.dart';
import 'package:resto_user/features/checkout/domain/repository/coupon_repository.dart';
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
import 'package:resto_user/features/home/presentation/bloc/product_bloc/product_bloc.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  /// Router dependencies
  getIt.registerSingleton<GoRouter>(router);
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
  getIt.registerSingleton<ProfilePageConstants>(ProfilePageConstants());

  /// Blocs
  getIt.registerSingleton<ProductBloc>(ProductBloc());
  ProductRepoImpl(dataSource: GetIt.I.get());
  getIt.registerSingleton<CouponFireStoreDatasource>(
      CouponFireStoreDatasourceImpl());
  getIt.registerSingleton<CouponRepository>(
      CouponRepositoryImpl(datasource: GetIt.I.get()));

  setupBlocDependencies();
}
