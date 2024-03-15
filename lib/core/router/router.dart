import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/features/cart/presentation/pages/cart_page.dart';
import 'package:resto_user/features/home/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:resto_user/features/home/presentation/pages/home_page.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:resto_user/features/chat/presentation/page/chat_page.dart';
import 'package:resto_user/features/profile/presentation/pages/profile_page.dart';

final router = GoRouter(
  initialLocation: ChatPage.routPath,
  routes: [
    GoRoute(
      path: CartPage.routPath,
      builder: (context, state) => const CartPage(),
    ),
    GoRoute(
        path: ChatPage.routPath,
        builder: (context, state) => BlocProvider(
              create: (context) => GetIt.I.get<ChatBloc>(),
              child: const ChatPage(),
            )),
    GoRoute(
      path: ProfilePage.routePath,
      builder: (context, state) => const ProfilePage(),
    ),
    GoRoute(
      path: HomePage.routPath,
      builder: (context, state) => BlocProvider<CategoryBloc>(
          create: (context) => CategoryBloc(), child: const HomePage()),
    )
  ],
);
