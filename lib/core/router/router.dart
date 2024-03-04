import 'package:go_router/go_router.dart';
import 'package:resto_user/features/cart/presentation/pages/cart_page.dart';
import 'package:resto_user/features/home/presentation/pages/home_page.dart';

final router = GoRouter(
  initialLocation: HomePage.routPath,
  routes: [
    GoRoute(
      path: CartPage.routPath,
      builder: (context, state) => const CartPage(),
    ),
    GoRoute(
      path: HomePage.routPath,
      builder: (context, state) => const HomePage(),
    )
  ],
);
