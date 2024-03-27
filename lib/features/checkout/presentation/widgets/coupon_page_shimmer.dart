import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:shimmer/shimmer.dart';

class CouponPageShimmer extends StatelessWidget {
  const CouponPageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final color = context.colors;
    final spaces = context.spaces;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: spaces.space_100, vertical: spaces.space_200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Shimmer.fromColors(
                    baseColor: color.textInverse,
                    highlightColor: color.textSubtle,
                    child: Container(
                      height: spaces.space_600 * 4,
                      decoration: BoxDecoration(
                        color: color.textSubtle,
                        borderRadius: BorderRadius.circular(
                          spaces.space_150,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
