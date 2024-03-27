import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:shimmer/shimmer.dart';

class LoadingCategoryWidget extends StatelessWidget {
  const LoadingCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: context.spaces.space_75),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: context.spaces.space_500,
                height: context.spaces.space_600,
                child: Shimmer.fromColors(
                  baseColor: context.colors.textInverse,
                  highlightColor: context.colors.textSubtle,
                  child: const CircleAvatar(),
                ),
              ),
              SizedBox(
                height: context.spaces.space_75,
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: context.spaces.space_150),
                width: context.spaces.space_700,
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
