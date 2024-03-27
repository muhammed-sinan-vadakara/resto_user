import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/home_page/home_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/home/domain/entity/offer_entity/offer_entity.dart';
import 'package:resto_user/features/home/presentation/widgets/title_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/top_image_widget.dart';

class OfferOverviewPage extends StatelessWidget {
  static const routePath = '/offerOverview';

  final OfferEntity? entity;

  const OfferOverviewPage({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final constants = GetIt.I.get<HomeConstants>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopImageWidget(imagePath: entity!.imagePath),
            Padding(
              padding: EdgeInsets.all(
                theme.spaces.space_300,
              ),
              child: Text(
                textAlign: TextAlign.justify,
                entity!.description,
                style: theme.typography.h100.copyWith(
                  color: theme.colors.text,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: theme.spaces.space_300,
              ),
              child: TitleWidget(title: constants.txtProducts),
            ),
          ],
        ),
      ),
    );
  }
}
