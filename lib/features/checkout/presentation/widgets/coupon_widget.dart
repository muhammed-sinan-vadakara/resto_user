import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/profile/presentation/widgets/sized_box_16.dart';

class CouponWidget extends StatelessWidget {
  const CouponWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      // height: theme.spaces.space_250 * 10,
      decoration: BoxDecoration(
        color: theme.colors.secondary,
        boxShadow: [theme.boxShadow.secondary],
        borderRadius: BorderRadius.circular(theme.spaces.space_150),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: theme.spaces.space_200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Gold Offer | \$5 - \$10 cashback using  Amazon pay Balance',
                style: theme.typography.h600,
              ),
            ),
            const SizedBox16(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_200),
              child: Text(
                'Applicable on transaction above \$50',
                style:
                    theme.typography.h300.copyWith(color: theme.colors.primary),
              ),
            ),
            const SizedBox16(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_200),
              child: Container(
                  decoration: BoxDecoration(
                      color: theme.colors.textInverse,
                      borderRadius:
                          BorderRadius.circular(theme.spaces.space_100)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: theme.spaces.space_100,
                        vertical: theme.spaces.space_50),
                    child: Text(
                      'APAYGOLD',
                      style: theme.typography.h300,
                    ),
                  )),
            ),
            const SizedBox16(),
            InkWell(
              onTap: () {},
              child: Container(
                height: theme.spaces.space_500,
                decoration: BoxDecoration(
                    color: theme.colors.primary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(theme.spaces.space_100),
                        bottomRight: Radius.circular(theme.spaces.space_100))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'TAP TO APPLY',
                      style: theme.typography.h500
                          .copyWith(color: theme.colors.secondary),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
