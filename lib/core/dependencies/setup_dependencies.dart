import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/constants/authentication/authentication_constant.dart';
import 'package:resto_user/core/constants/checkout_page/checkout_page_constants.dart';
import 'package:resto_user/core/constants/home_page/home_constants.dart';
import 'package:resto_user/core/constants/chat_page_constants/chat_page_constants.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/constants/my_order/my_order_page_constants.dart';
import 'package:resto_user/core/constants/my_order/order_summary_page.dart';
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
import 'package:resto_user/features/cart/data/datasource/cart_datasource.dart';
import 'package:resto_user/features/cart/data/datasource/cart_datasource_impl.dart';
import 'package:resto_user/features/cart/data/repository/cart_repository_impl.dart';
import 'package:resto_user/features/cart/domain/repository/cart_repository.dart';
import 'package:resto_user/features/chat/data/data%20source/message_data_source.dart';
import 'package:resto_user/features/chat/data/data%20source/message_data_source_impl.dart';
import 'package:resto_user/features/chat/data/repository/message_repository_impl.dart';
import 'package:resto_user/features/chat/domain/repository/message_repository.dart';
import 'package:resto_user/features/checkout/data/data_source/coupon_firestore_datasource.dart';
import 'package:resto_user/features/checkout/data/data_source/coupon_firestore_datasource_impl.dart';
import 'package:resto_user/features/checkout/data/data_source/instruction_firestore_database.dart';
import 'package:resto_user/features/checkout/data/data_source/instruction_firestore_datasource_impl.dart';
import 'package:resto_user/features/checkout/data/repository/coupon_repository_impl.dart';
import 'package:resto_user/features/checkout/data/repository/instruction_repository_impl.dart';
import 'package:resto_user/features/checkout/domain/repository/coupon_repository.dart';
import 'package:resto_user/features/history/data/datasource/my_order_datasource.dart';
import 'package:resto_user/features/history/data/datasource/my_order_datasource_impl.dart';
import 'package:resto_user/features/history/data/repository/my_order_repository_impl.dart';
import 'package:resto_user/features/history/domain/repository/my_order_repository.dart';
import 'package:resto_user/features/checkout/domain/repository/instruction_repository.dart';
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
import 'package:resto_user/features/profile/data/data_source/firestore/user_firestore_data_source.dart';
import 'package:resto_user/features/profile/data/data_source/firestore/user_firestore_data_source_impl.dart';

import 'package:resto_user/features/map/data/datasource/geocode_api_datasource.dart';
import 'package:resto_user/features/map/data/datasource/geocode_api_datasource_impl.dart';
import 'package:resto_user/features/map/data/datasource/places_api_datasource.dart';
import 'package:resto_user/features/map/data/datasource/places_api_datasource_impl.dart';
import 'package:resto_user/features/map/data/repository/map_repository_impl.dart';
import 'package:resto_user/features/map/domain/repository/map_repository.dart';
import 'package:resto_user/features/profile/data/data_source/firestore/user_firestore_data_source.dart';
import 'package:resto_user/features/profile/data/data_source/firestore/user_firestore_data_source_impl.dart';


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
  // getIt.registerSingleton<MapAPIRepository>(MapAPIRepositoryIMPL());
  getIt.registerSingleton<UserFirestoreDataSource>(
      UserFirestoreDataSourceImpl());

  ///Checkout
  getIt.registerSingleton<CouponFireStoreDatasource>(
      CouponFireStoreDatasourceImpl());
  getIt.registerSingleton<CouponRepository>(
      CouponRepositoryImpl(datasource: GetIt.I.get()));
  getIt.registerSingleton<CheckoutPageConstants>(CheckoutPageConstants());

  ///My Order

  getIt.registerSingleton<MyOrderPageConstants>(MyOrderPageConstants());
  getIt.registerSingleton<OrderSummaryPageConstants>(
      OrderSummaryPageConstants());
  getIt.registerSingleton<MyOrderDataSource>(MyOrderDatasourceImpl());
  getIt.registerSingleton<MyOrderRepository>(
      MyOrderRepositoryImpl(dataSource: GetIt.I.get()));

  /// cart
  getIt.registerSingleton<CartDataSource>(CartDataSourceImpl());
  getIt.registerSingleton<CartRepository>(
      CartRepositoryImpl(dataSource: GetIt.I.get()));

  /// Chat
  getIt.registerSingleton<MessageDataSource>(MessageDataSourceImpl());
  getIt.registerSingleton<MessageRepository>(
      MessageRepositoryImpl(GetIt.I.get<MessageDataSource>()));

  //Instructions
  getIt.registerSingleton<InstructionFirestoreDatabase>(
      InstructionFirestoreDatabaseImpl());
  getIt.registerSingleton<InstructionRepository>(
      InstructionRepositoryImpl(GetIt.I.get<InstructionFirestoreDatabase>()));

  getIt.registerSingleton<UserFirestoreDataSource>(
      UserFirestoreDataSourceImpl());

  ///Checkout
  getIt.registerSingleton<CouponFireStoreDatasource>(
      CouponFireStoreDatasourceImpl());
  getIt.registerSingleton<CouponRepository>(
      CouponRepositoryImpl(datasource: GetIt.I.get()));

  ///Map
  getIt.registerSingleton<GeocodeAPIDataSource>(GeocodeAPIDataSourceIMPL());
  getIt.registerSingleton<PlacesAPIDataSource>(PlaceApiDatasourceIMPL());
  getIt.registerSingleton<MapAPIRepository>(MapAPIRepositoryIMPL(
    latlongdatasource: GetIt.I.get<GeocodeAPIDataSource>(),
    placedatasource: GetIt.I.get<PlacesAPIDataSource>(),
  ));


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
