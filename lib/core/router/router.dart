import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/features/cart/presentation/pages/cart_page.dart';
import 'package:resto_user/features/home/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:resto_user/features/home/presentation/pages/home_page.dart';
import 'package:resto_user/features/profile/presentation/pages/profile_page.dart';
import 'package:resto_user/features/profile/presentation/pages/support_page.dart';
import 'package:resto_user/features/profile/presentation/provider/toggle_theme/toggle_theme_bloc.dart';

final router = GoRouter(
  initialLocation: HomePage.routPath,
  routes: [
    GoRoute(
      path: CartPage.routPath,
      builder: (context, state) => const CartPage(),
    ),
    GoRoute(
      path: ProfilePage.routePath,
      builder: (context, state) => BlocProvider<ToggleThemeBloc>(
          create: (context) => ToggleThemeBloc(), child: const ProfilePage()),
    ),
    GoRoute(
      path: SupportPage.routePath,
      builder: (context, state) => const SupportPage(),
    ),
    GoRoute(
      path: HomePage.routPath,
      builder: (context, state) => BlocProvider<CategoryBloc>(
          create: (context) => CategoryBloc(), child: const HomePage()),
    )
  ],
);
