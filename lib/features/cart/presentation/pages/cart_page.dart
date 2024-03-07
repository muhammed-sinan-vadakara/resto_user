import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';


class CartPage extends StatelessWidget {
  static const routPath = '/cart';
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('sdfghj',
              style: AppTheme.of(context)
                  .typography
                  .h900
                  .copyWith(color: AppTheme.of(context).colors.primary)),
        ],
      ),
    );
  }
}
