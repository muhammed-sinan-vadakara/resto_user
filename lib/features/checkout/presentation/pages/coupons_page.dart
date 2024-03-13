import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/app_bar_widget.dart';
import 'package:resto_user/features/checkout/presentation/widgets/coupon_widget.dart';
import 'package:resto_user/features/profile/presentation/widgets/sized_box_32.dart';

class CouponsPage extends StatelessWidget {
  static const routePath = '/couponspage';
  const CouponsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(theme.spaces.space_700),
          child: const AppBarWidget(title: 'Payment Coupons For you')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: theme.spaces.space_300,
              vertical: theme.spaces.space_300),
          child: const Column(
            children: [
              CouponWidget(),
              SizedBox32(),
              CouponWidget(),
              SizedBox32(),
              CouponWidget(),
              SizedBox32(),
              CouponWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
