import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/my_order/my_order_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/history/domain/entity/my_order_entity.dart';

class CurrentOrdersListviewWidget extends StatelessWidget {
  final List<MyOrderEntity> entity;
  const CurrentOrdersListviewWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<MyOrderPageConstants>();
    return ListView.builder(
      shrinkWrap: true,
      itemCount: entity.length,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.spaces.space_300,
              vertical: context.spaces.space_150),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height / 6.80,
            decoration: BoxDecoration(
                border:
                    Border.all(width: 1.3, color: context.colors.textDisabled),
                borderRadius: BorderRadius.circular(context.spaces.space_100)),

            /// image
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: context.spaces.space_125),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height / 10,
                    width: MediaQuery.sizeOf(context).width / 4.50,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://www.kitchensanctuary.com/wp-content/uploads/2019/08/Crispy-Chicken-Burger-square-FS-4518.jpg"),
                            fit: BoxFit.fill),
                        borderRadius:
                            BorderRadius.circular(context.spaces.space_100)),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 1.90,
                  height: MediaQuery.sizeOf(context).height / 10,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            entity[index].id,
                            style: context.typography.h700
                                .copyWith(color: context.colors.text),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.spaces.space_125,
                      ),

                      /// Row 1
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            constants.txtPrice,
                            style: context.typography.h700
                                .copyWith(color: context.colors.primary),
                          ),
                          Text(
                            constants.txtViewDetails,
                            style: context.typography.h600
                                .copyWith(color: context.colors.primary),
                          )
                        ],
                      ),
                      SizedBox(
                        height: context.spaces.space_125,
                      ),

                      /// Row 2
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              constants.txtDate,
                              style: context.typography.h200
                                  .copyWith(color: context.colors.text),
                            ),
                          ),
                          Text(
                            constants.txtTime,
                            style: context.typography.h200
                                .copyWith(color: context.colors.text),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
