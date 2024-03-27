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
    return GridView.builder(
      physics: const ClampingScrollPhysics(),
      itemCount: entity.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: context.spaces.space_250,
          mainAxisSpacing: context.spaces.space_250,
          mainAxisExtent: context.spaces.space_900 * 2.75),
      itemBuilder: (context, index) {
        final productData = entity[index];

        return Container(
          decoration: BoxDecoration(
            color: context.colors.secondary,
            borderRadius: BorderRadius.circular(context.spaces.space_100),
            boxShadow: [
              context.boxShadow.primary,
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: context.spaces.space_150),
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
                    width: context.spaces.space_500 * 3.7,
                    height: context.spaces.space_500 * 3.7,
                    decoration: BoxDecoration(
                      color: context.colors.textInverse,
                      borderRadius: BorderRadius.circular(
                        context.spaces.space_100,
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
                  height: context.spaces.space_50,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.spaces.space_150),
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
