import 'package:flutter/cupertino.dart';
import 'package:resto_user/features/home/domain/entity/offer_entity/offer_entity.dart';

class OfferProductListViewWidget extends StatelessWidget {
  final OfferEntity entity;
  const OfferProductListViewWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: ListView.builder(
      itemCount: entity.products.length,
      itemBuilder: (context, index) {
        final productData = entity.products[index];
        return Row(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    productData.characters.string,
                  ),
                ),
              ),
            )
          ],
        );
      },
    ));
  }
}
