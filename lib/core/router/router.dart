import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/features/authentication/presentation/page/login_page.dart';
import 'package:resto_user/features/authentication/presentation/page/otp_verify_page.dart';
import 'package:resto_user/features/cart/presentation/pages/cart_page.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc.dart';
import 'package:resto_user/features/map/presentation/page/map_page.dart';
import 'package:resto_user/features/profile/presentation/pages/profile_page.dart';
import 'package:resto_user/features/checkout/presentation/pages/checkout_page.dart';
import 'package:resto_user/features/checkout/presentation/pages/coupons_page.dart';
import 'package:resto_user/features/home/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:resto_user/features/home/presentation/pages/home_page.dart';

final router = GoRouter(
  initialLocation: CartPage.routPath,
  routes: [
    GoRoute(
      path: CartPage.routPath,
      builder: (context, state) => const CartPage(),
    ),
    GoRoute(
      path: Map.routePath,
      builder: (context, state) => const Map(),
    ),
    GoRoute(
      path: ProfilePage.routePath,
      builder: (context, state) => const ProfilePage(),
    ),
    GoRoute(
      path: CouponsPage.routePath,
      builder: (context, state) => BlocProvider(
        create: (context) => CouponBloc(),
        child: const CouponsPage(),
      ),
    ),
    GoRoute(
      path: CheckOutPage.routePath,
      builder: (context, state) => BlocProvider(
        create: (context) => GetIt.I.get<CouponBloc>(),
        child: const CheckOutPage(),
      ),
    ),
    GoRoute(
      path: HomePage.routPath,
      builder: (context, state) => BlocProvider<CategoryBloc>(
          create: (context) => CategoryBloc(), child: const HomePage()),
    ),
    GoRoute(
      path: LoginPage.routePath,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: OtpVerificationPage.routePath,
      builder: (context, state) => const OtpVerificationPage(),
    )
  ],
);
