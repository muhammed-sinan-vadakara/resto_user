import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/checkout_page/checkout_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class BillDetailsWidget extends StatelessWidget {
  const BillDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<CheckoutPageConstants>();

    return Container(
      decoration: BoxDecoration(
        color: context.colors.secondary,
        boxShadow: [context.boxShadow.secondary],
        borderRadius: BorderRadius.circular(context.spaces.space_150),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: context.spaces.space_250,
            vertical: context.spaces.space_200),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  constants.txtSubTotal,
                  style: context.typography.h600,
                ),
                const Expanded(child: SizedBox()),
                Text(
                  'Rs.300',
                  style: context.typography.h600,
                ),
              ],
            ),
            SizedBox(
              height: context.spaces.space_300,
            ),
            Row(
              children: [
                Text(
                  constants.txtGst,
                  style: context.typography.h300,
                ),
                const Expanded(child: SizedBox()),
                Text(
                  'Rs.20',
                  style: context.typography.h300,
                ),
              ],
            ),
            SizedBox(
              height: context.spaces.space_100,
            ),
            Row(
              children: [
                Text(
                  constants.txtDeliveryFee,
                  style: context.typography.h300,
                ),
                const Expanded(child: SizedBox()),
                Text(
                  'Rs.80',
                  style: context.typography.h300,
                ),
              ],
            ),
            SizedBox(
              height: context.spaces.space_100,
            ),
            Divider(
              color: context.colors.textDisabled,
            ),
            SizedBox(
              height: context.spaces.space_100,
            ),
            Row(
              children: [
                Text(
                  constants.txtGrandTotal,
                  style: context.typography.h700,
                ),
                const Expanded(child: SizedBox()),
                Text(
                  'Rs.400',
                  style: context.typography.h700,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
