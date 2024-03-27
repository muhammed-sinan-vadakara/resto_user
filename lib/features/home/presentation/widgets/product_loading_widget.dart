import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:shimmer/shimmer.dart';

class LoadingProductWidget extends StatelessWidget {
  const LoadingProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const ClampingScrollPhysics(),
      itemCount: 3,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: context.spaces.space_250,
          mainAxisSpacing: context.spaces.space_250,
          mainAxisExtent: context.spaces.space_900 * 2.75),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: context.spaces.space_75),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: context.colors.secondary,
                  borderRadius: BorderRadius.circular(context.spaces.space_100),
                  boxShadow: [
                    context.boxShadow.primary,
                  ],
                ),
                child: SizedBox(
                  width: context.spaces.space_500 * 3.7,
                  height: context.spaces.space_500 * 3.7,
                  child: Shimmer.fromColors(
                    baseColor: context.colors.textInverse,
                    highlightColor: context.colors.textSubtle,
                    child: Container(
                      width: context.spaces.space_500 * 3.7,
                      height: context.spaces.space_500 * 3.7,
                      decoration: BoxDecoration(
                        color: context.colors.textInverse,
                        borderRadius: BorderRadius.circular(
                          context.spaces.space_100,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: context.spaces.space_75,
              ),
              SizedBox(
                width: context.spaces.space_500 * 3.7,
                height: context.spaces.space_150,
                child: Shimmer.fromColors(
                  baseColor: context.colors.textInverse,
                  highlightColor: context.colors.textSubtle,
                  child: Container(
                    decoration: BoxDecoration(
                        color: context.colors.primary,
                        borderRadius:
                            BorderRadius.circular(context.spaces.space_50)),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
