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
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.spaces.space_300,
                vertical: context.spaces.space_100,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: context.colors.secondary,
                  boxShadow: [context.boxShadow.primary],
                  borderRadius: BorderRadius.circular(
                    context.spaces.space_100,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(
                    context.spaces.space_150,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: context.spaces.space_500 * 5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                entity.imagePath,
                              ),
                              fit: BoxFit.cover),
                          color: context.colors.textInverse,
                          borderRadius: BorderRadius.circular(
                            context.spaces.space_100,
                          ),
                        ),
                      ),
                      const SizedBox16(),
                      Text(
                        entity.name,
                        style: context.typography.h600,
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
