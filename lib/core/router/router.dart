import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/features/authentication/presentation/page/login_page.dart';
import 'package:resto_user/features/authentication/presentation/page/otp_verify_page.dart';
import 'package:resto_user/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:resto_user/features/cart/presentation/pages/cart_page.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc.dart';
import 'package:resto_user/features/home/domain/entity/offer_entity/offer_entity.dart';
import 'package:resto_user/features/checkout/presentation/bloc/payment_bloc/payment_bloc.dart';
import 'package:resto_user/features/checkout/presentation/pages/order_placed_page.dart';
import 'package:resto_user/features/checkout/presentation/bloc/instruction_bloc/instruction_bloc.dart';
import 'package:resto_user/features/history/presentation/bloc/history_bloc/my_order_bloc.dart';
import 'package:resto_user/features/history/presentation/pages/my_order_page.dart';
import 'package:resto_user/features/home/presentation/bloc/offer_bloc/offer_bloc.dart';
import 'package:resto_user/features/home/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:resto_user/features/home/presentation/pages/offer_overview_page.dart';
import 'package:resto_user/features/map/presentation/bloc/map_bloc.dart';
import 'package:resto_user/features/map/presentation/page/map_page.dart';
import 'package:resto_user/features/profile/presentation/pages/profile_page.dart';
import 'package:resto_user/features/profile/presentation/pages/support_page.dart';
import 'package:resto_user/features/profile/presentation/provider/toggle_theme/toggle_theme_bloc.dart';
import 'package:resto_user/features/checkout/presentation/pages/checkout_page.dart';
import 'package:resto_user/features/checkout/presentation/pages/coupons_page.dart';
import 'package:resto_user/features/home/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:resto_user/features/home/presentation/pages/home_page.dart';

final router = GoRouter(
  initialLocation: HomePage.routePath,
  routes: [
    GoRoute(
      path: CartPage.routPath,
      builder: (context, state) => BlocProvider<CartBloc>(
          create: (context) => CartBloc(), child: const CartPage()),
    ),
    GoRoute(
      path: MyOrderPage.routePath,
      builder: (context, state) => BlocProvider<MyOrderBloc>(
        create: (context) => MyOrderBloc(),
        child: const MyOrderPage(),
      ),
    ),
    GoRoute(
      path: Map.routePath,
      builder: (context, state) => BlocProvider<MapBloc>(
        create: (context) => MapBloc(),
        child: const Map(),
      ),
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
      path: OfferOverviewPage.routePath,
      builder: (context, state) => OfferOverviewPage(
        entity: state.extra as OfferEntity,
      ),
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
    ),
    GoRoute(
      path: CouponsPage.routePath,
      builder: (context, state) => BlocProvider.value(
        value: GetIt.I.get<CouponBloc>(),
        child: const CouponsPage(),
      ),
    ),
    GoRoute(
      path: CheckOutPage.routePath,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GetIt.I.get<CouponBloc>(),
          ),
          BlocProvider(
            create: (context) => GetIt.I.get<PaymentBloc>(),
          ),
          BlocProvider(create: (context) => GetIt.I.get<InstructionBloc>())
        ],
        child: const CheckOutPage(),
      ),
    ),
    GoRoute(
      path: LoginPage.routePath,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: OtpVerificationPage.routePath,
      builder: (context, state) => const OtpVerificationPage(),
    ),
    GoRoute(
      path: OrderPlacedPage.routePath,
      builder: (context, state) => const OrderPlacedPage(),
    ),
  ],
);
