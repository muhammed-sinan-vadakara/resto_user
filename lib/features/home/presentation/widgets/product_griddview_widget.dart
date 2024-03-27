import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                        builder: (context) => ProductDetailsBottomSheetWidget(
                            productData: productData));
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

class ProductDetailsBottomSheetWidget extends StatelessWidget {
  const ProductDetailsBottomSheetWidget({
    super.key,
    required this.productData,
  });

  final ProductEntity productData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.9,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(context.spaces.space_250),
                  topRight: Radius.circular(context.spaces.space_250),
                ),
              ),
              child: OverviewBottomSheetWidget(
                entity: productData,
              ),
            ),
          ),
          const AddCartButtonWidget()
        ],
      ),
    );
  }
}
