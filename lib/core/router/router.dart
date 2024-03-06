import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/features/authentication/presentation/page/login_page.dart';
import 'package:resto_user/features/authentication/presentation/page/otp_verify_page.dart';
import 'package:resto_user/features/cart/presentation/pages/cart_page.dart';
import 'package:resto_user/features/home/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:resto_user/features/home/presentation/pages/home_page.dart';
import 'package:resto_user/features/profile/presentation/pages/profile_page.dart';

final router = GoRouter(
  // initialLocation: HomePage.routPath,
  // initialLocation: ProfilePage.routePath,
  // initialLocation: OtpVerificationPage.routePath,
  initialLocation: LoginPage.routePath,
  routes: [
    GoRoute(
      path: CartPage.routPath,
      builder: (context, state) => const CartPage(),
    ),
    GoRoute(
      path: ProfilePage.routePath,
      builder: (context, state) => const ProfilePage(),
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
