import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/home/domain/entity/offer_entity/offer_entity.dart';
import 'package:resto_user/features/home/presentation/pages/offer_overview_page.dart';

class CarouselSliderWidget extends StatelessWidget {
  final List<OfferEntity> entity;
  const CarouselSliderWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: entity.length,
      itemBuilder: (context, index, realIndex) {
        return InkWell(
          onTap: () {
            context.push(OfferOverviewPage.routePath, extra: entity[index]);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(entity[index].imagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: context.spaces.space_500 * 6,
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
