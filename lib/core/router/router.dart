import 'package:go_router/go_router.dart';
import 'package:resto_user/features/cart/presentation/pages/cart_page.dart';
import 'package:resto_user/features/chat/presentation/page/chat_page.dart';

final router = GoRouter(
  initialLocation: ChatPage.routPath,
  routes: [
    GoRoute(
      path: CartPage.routPath,
      builder: (context, state) => const CartPage(),
    ),
    GoRoute(
      path: ChatPage.routPath,
      builder: (context, state) => const ChatPage(),
    )
  ],
);
