import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/constants/checkout_page/checkout_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/elevated_bottom_button_widget.dart';
import 'package:resto_user/features/home/presentation/pages/home_page.dart';
import 'package:lottie/lottie.dart';

class OrderPlacedPage extends StatelessWidget {
  static const routePath = '/orderplacedpage';
  const OrderPlacedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<CheckoutPageConstants>();
    final theme = AppTheme.of(context);
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.network(
                'https://lottie.host/2d0b943e-3ce5-4904-83ad-b0889b0154b5/OtvaYFtJXa.json',
                width: 250,
                height: 200,
                fit: BoxFit.cover,
                repeat: false,
              ),
              Text(
                constants.txtOrderPlaced,
                style: theme.typography.h800,
              ),
              SizedBox(
                height: theme.spaces.space_100,
              ),
              Text(
                constants.txtOrderPlacedText,
                style: theme.typography.h500
                    .copyWith(color: theme.colors.textDisabled),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ElevatedBottomButtonWidget(
          text: 'Back to Home',
          onPressed: () {
            context.go(HomePage.routePath);
          },
        ));
  }
}
