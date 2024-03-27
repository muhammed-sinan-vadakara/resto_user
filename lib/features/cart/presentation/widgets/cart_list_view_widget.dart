import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/cart/domain/entity/cart_entity.dart';

class CartListViewWidget extends StatelessWidget {
  final List<CartEntity> entity;
  const CartListViewWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: context.spaces.space_200,
      ),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          height: context.spaces.space_600 * 2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              border: Border.all(color: context.colors.textDisabled),
              borderRadius: BorderRadius.circular(context.spaces.space_100)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.spaces.space_125),
            child: Row(
              children: [
                Container(
                  height: context.spaces.space_900,
                  width: context.spaces.space_900,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(context.spaces.space_100),
                      color: context.colors.textDisabled),
                ),
                SizedBox(
                  width: context.spaces.space_150,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: context.spaces.space_125),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        entity[index].productId,
                        style: context.typography.h400
                            .copyWith(color: context.colors.text),
                      ),
                      Text(
                        'Burger Factory LTD',
                        style: context.typography.h400
                            .copyWith(color: context.colors.textSubtle),
                      ),
                      Text(
                        '25',
                        style: context.typography.h400
                            .copyWith(color: context.colors.primary),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: context.spaces.space_500,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: context.spaces.space_300,
                        width: context.spaces.space_300,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(context.spaces.space_100),
                            color: context.colors.textInverse),
                        child: Icon(
                          Icons.remove,
                          size: context.spaces.space_200,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: context.spaces.space_150,
                    ),
                    const Text('1'),
                    SizedBox(
                      width: context.spaces.space_150,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: context.spaces.space_300,
                        width: context.spaces.space_300,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(context.spaces.space_100),
                            color: context.colors.primary),
                        child: Icon(
                          Icons.add,
                          size: context.spaces.space_200,
                          color: context.colors.secondary,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
