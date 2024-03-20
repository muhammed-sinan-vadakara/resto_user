import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/checkout_page/checkout_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class BillDetailsWidget extends StatelessWidget {
  const BillDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<CheckoutPageConstants>();
    final theme = AppTheme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colors.secondary,
        boxShadow: [theme.boxShadow.secondary],
        borderRadius: BorderRadius.circular(theme.spaces.space_150),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: theme.spaces.space_250,
            vertical: theme.spaces.space_200),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  constants.txtSubTotal,
                  style: theme.typography.h600,
                ),
                const Expanded(child: SizedBox()),
                Text(
                  'Rs.300',
                  style: theme.typography.h600,
                ),
              ],
            ),
            SizedBox(
              height: theme.spaces.space_300,
            ),
            Row(
              children: [
                Text(
                  constants.txtGst,
                  style: theme.typography.h300,
                ),
                const Expanded(child: SizedBox()),
                Text(
                  'Rs.20',
                  style: theme.typography.h300,
                ),
              ],
            ),
            SizedBox(
              height: theme.spaces.space_100,
            ),
            Row(
              children: [
                Text(
                  constants.txtDeliveryFee,
                  style: theme.typography.h300,
                ),
                const Expanded(child: SizedBox()),
                Text(
                  'Rs.80',
                  style: theme.typography.h300,
                ),
              ],
            ),
            SizedBox(
              height: theme.spaces.space_100,
            ),
            Divider(
              color: theme.colors.textDisabled,
            ),
            SizedBox(
              height: theme.spaces.space_100,
            ),
            Row(
              children: [
                Text(
                  constants.txtGrandTotal,
                  style: theme.typography.h700,
                ),
                const Expanded(child: SizedBox()),
                Text(
                  'Rs.400',
                  style: theme.typography.h700,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
