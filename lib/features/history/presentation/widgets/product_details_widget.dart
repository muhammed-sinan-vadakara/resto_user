import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/my_order/my_order_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class ProductDetailsWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  const ProductDetailsWidget(
      {super.key, required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final constants = GetIt.I.get<MyOrderPageConstants>();
    return Padding(
      padding: EdgeInsets.only(left: appTheme.spaces.space_125),
      child: Container(
        width: MediaQuery.sizeOf(context).width / 1.90,
        height: MediaQuery.sizeOf(context).height / 10,
        // color: const Color.fromARGB(255, 197, 197, 197),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  constants.txtChickenBurger,
                  style: appTheme.typography.h700
                      .copyWith(color: appTheme.colors.text),
                ),
              ],
            ),
            SizedBox(
              height: appTheme.spaces.space_125,
            ),

            /// Row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  constants.txtPrice,
                  style: appTheme.typography.h700
                      .copyWith(color: appTheme.colors.primary),
                ),
                Text(
                  text,
                  style: appTheme.typography.h600.copyWith(color: textColor),
                  // constants.txtViewDetails,
                )
              ],
            ),
            SizedBox(
              height: appTheme.spaces.space_125,
            ),

            /// Row 2
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    constants.txtDate,
                    style: appTheme.typography.h200
                        .copyWith(color: appTheme.colors.text),
                  ),
                ),
                Text(
                  constants.txtTime,
                  style: appTheme.typography.h200
                      .copyWith(color: appTheme.colors.text),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
