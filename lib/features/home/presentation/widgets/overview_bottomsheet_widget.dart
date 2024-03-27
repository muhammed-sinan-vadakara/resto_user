import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/home/domain/entity/product_entity/product_entity.dart';
import 'package:resto_user/features/home/presentation/widgets/addons_view_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/types_view_widget.dart';
import 'package:resto_user/features/profile/presentation/widgets/sized_box_16.dart';

class OverviewBottomSheetWidget extends StatelessWidget {
  final ProductEntity entity;

  const OverviewBottomSheetWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: theme.spaces.space_300,
                vertical: theme.spaces.space_100,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: theme.colors.secondary,
                  boxShadow: [theme.boxShadow.primary],
                  borderRadius: BorderRadius.circular(
                    theme.spaces.space_100,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(
                    theme.spaces.space_150,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: theme.spaces.space_500 * 5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                entity.imagePath,
                              ),
                              fit: BoxFit.cover),
                          color: theme.colors.textInverse,
                          borderRadius: BorderRadius.circular(
                            theme.spaces.space_100,
                          ),
                        ),
                      ),
                      const SizedBox16(),
                      Text(
                        entity.name,
                        style: theme.typography.h600,
                      ),
                      const SizedBox16(),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('data'),
                          Text('data'),
                          Text('data'),
                        ],
                      ),
                      const SizedBox16(),
                      Text(
                        textAlign: TextAlign.justify,
                        entity.description,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            TypesViewWidget(entity: entity),
            AddonsViewWidget(entity: entity),
          ],
        ),
      ),
    );
  }
}
