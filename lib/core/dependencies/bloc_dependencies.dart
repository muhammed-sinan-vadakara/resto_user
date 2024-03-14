import 'package:get_it/get_it.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc.dart';

void setupBlocDependencies() {
  final getIt = GetIt.I;

  /// Checkout feature bloc
  getIt.registerSingleton<CouponBloc>(CouponBloc());
}
