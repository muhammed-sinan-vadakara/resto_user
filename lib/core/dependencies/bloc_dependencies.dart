import 'package:get_it/get_it.dart';
import 'package:resto_user/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:resto_user/features/checkout/presentation/bloc/payment_bloc/payment_bloc.dart';
import 'package:resto_user/features/checkout/presentation/bloc/toggle_switch_bloc/toggle_switch_bloc.dart';
import 'package:resto_user/features/home/data/repository/product_repository_impl.dart';
import 'package:resto_user/features/home/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:resto_user/features/home/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:resto_user/features/profile/presentation/provider/theme/theme_bloc.dart';
import 'package:resto_user/features/profile/presentation/provider/toggle_theme/toggle_theme_bloc.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc.dart';

void setupBlocDependencies() {
  final getIt = GetIt.I;

  /// Profile feature blocs
  getIt.registerSingleton<ThemeBloc>(ThemeBloc());
  getIt.registerSingleton<ToggleThemeBloc>(ToggleThemeBloc());

  ///Home feature blocs
  getIt.registerSingleton<CategoryBloc>(CategoryBloc());

  /// Checkout feature blocs
  getIt.registerSingleton<CouponBloc>(CouponBloc());
  getIt.registerSingleton<ToggleSwitchBloc>(ToggleSwitchBloc());
  getIt.registerSingleton<PaymentBloc>(PaymentBloc());

  ///Product feature blocs
  getIt.registerSingleton<ProductBloc>(ProductBloc());
  ProductRepoImpl(dataSource: GetIt.I.get());

  ///Cart feature blocs
  getIt.registerSingleton<CartBloc>(CartBloc());
}
