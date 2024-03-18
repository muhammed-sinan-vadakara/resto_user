import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:shimmer/shimmer.dart';

class CarouselSliderLoadingWidget extends StatelessWidget {
  const CarouselSliderLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return CarouselSlider.builder(
      itemCount: 3,
      itemBuilder: (context, index, realIndex) {
        return Shimmer.fromColors(
          baseColor: theme.colors.textInverse,
          highlightColor: theme.colors.textSubtle,
          child: Container(
            decoration: BoxDecoration(
              color: theme.colors.text,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: theme.spaces.space_500 * 6,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 1,
      ),
    );
  }
}
