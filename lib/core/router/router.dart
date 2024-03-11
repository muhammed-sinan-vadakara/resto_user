import 'package:go_router/go_router.dart';
import 'package:resto_user/features/cart/presentation/pages/cart_page.dart';
import 'package:resto_user/features/map/presentation/page/map_page.dart';

final router = GoRouter(
  initialLocation: Map.routePath,
  routes: [
    GoRoute(
      path: CartPage.routPath,
      builder: (context, state) => const CartPage(),
    ),
    GoRoute(
      path: Map.routePath,
      builder: (context, state) => const Map(),
    )
  ],
);
