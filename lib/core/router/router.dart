import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/features/cart/presentation/pages/cart_page.dart';
import 'package:resto_user/features/home/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:resto_user/features/home/presentation/bloc/offer_bloc/offer_bloc.dart';
import 'package:resto_user/features/home/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:resto_user/features/home/presentation/pages/home_page.dart';
import 'package:resto_user/features/profile/presentation/pages/profile_page.dart';

final router = GoRouter(
  initialLocation: HomePage.routePath,
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
      path: HomePage.routePath,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CategoryBloc()),
          BlocProvider(create: (context) => OfferBloc()),
          BlocProvider(
            create: (context) => GetIt.I.get<ProductBloc>(),
          ),
        ],
        child: const HomePage(),
      ),
    )
  ],
);
