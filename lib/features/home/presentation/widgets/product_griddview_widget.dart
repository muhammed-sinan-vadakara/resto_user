import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/home/domain/entity/product_entity/product_entity.dart';
import 'package:resto_user/features/home/presentation/widgets/add_cart_button_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/overview_bottomsheet_widget.dart';

class ProductGridViewWidget extends StatelessWidget {
  final List<ProductEntity> entity;
  const ProductGridViewWidget({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return GridView.builder(
      physics: const ClampingScrollPhysics(),
      itemCount: entity.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: theme.spaces.space_250,
          mainAxisSpacing: theme.spaces.space_250,
          mainAxisExtent: theme.spaces.space_900 * 2.75),
      itemBuilder: (context, index) {
        final productData = entity[index];

        return Container(
          decoration: BoxDecoration(
            color: theme.colors.secondary,
            borderRadius: BorderRadius.circular(theme.spaces.space_100),
            boxShadow: [
              theme.boxShadow.primary,
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: theme.spaces.space_150),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    showModalBottomSheet<dynamic>(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext bc) {
                          return Stack(
                            children: [
                              Container(
                                height: 750,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: OverviewBottomSheetWidget(
                                  entity: productData,
                                ),
                              ),
                              const Positioned(
                                bottom: 0,
                                child: AddCartButtonWidget(),
                              )
                            ],
                          );
                        });
                  },
                  child: Container(
                    width: theme.spaces.space_500 * 3.7,
                    height: theme.spaces.space_500 * 3.7,
                    decoration: BoxDecoration(
                      color: theme.colors.textInverse,
                      borderRadius: BorderRadius.circular(
                        theme.spaces.space_100,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          productData.imagePath,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: theme.spaces.space_50,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: theme.spaces.space_150),
                      child: Text(productData.name),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
