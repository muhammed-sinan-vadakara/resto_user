import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/checkout/data/model/condition_model.dart';
import 'package:resto_user/features/checkout/domain/entity/coupon_entity.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc_state.dart';
import 'package:resto_user/features/profile/presentation/widgets/sized_box_16.dart';

class CouponWidget extends StatelessWidget {
  final List<CouponEntity> entity;
  const CouponWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: entity.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final couponData = entity[index];
        var conditionText = '';

        for (var i = 0; i < couponData.condition.length; i++) {
          final condition = couponData.condition[i];

          if (i > 0) {
            conditionText += switch (condition.logic) {
              ConditionLogic.and => 'and ',
              ConditionLogic.or => 'or ',
            };
          }

          conditionText += switch (condition.count) {
            ConditionType.amount => 'Orders amount',
            _ => "Order number",
          };

          conditionText += switch (condition.check) {
            ConditionCheck.equalTo => ' is ',
            ConditionCheck.greaterThan => ' is greater than ',
            ConditionCheck.lessThan => 'is less than '
          };

          if (condition.count == ConditionType.amount) {
            conditionText += '\u20b9';
          }

          conditionText += condition.value.toStringAsFixed(0);

          if (i != couponData.condition.length - 1) {
            conditionText += '\n';
          }
        }
        return Padding(
          padding: EdgeInsets.symmetric(vertical: context.spaces.space_150),
          child: Container(
            decoration: BoxDecoration(
              color: context.colors.secondary,
              boxShadow: [context.boxShadow.secondary],
              borderRadius: BorderRadius.circular(context.spaces.space_150),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: context.spaces.space_200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      entity[index].title!,
                      style: context.typography.h600,
                    ),
                  ),
                  const SizedBox16(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.spaces.space_200),
                    child: Text(
                      conditionText,
                      style: context.typography.h300
                          .copyWith(color: context.colors.primary),
                    ),
                  ),
                  const SizedBox16(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.spaces.space_200),
                    child: Container(
                        decoration: BoxDecoration(
                            color: context.colors.textInverse,
                            borderRadius: BorderRadius.circular(
                                context.spaces.space_100)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: context.spaces.space_100,
                              vertical: context.spaces.space_50),
                          child: Text(
                            entity[index].code.toString(),
                            style: context.typography.h300,
                          ),
                        )),
                  ),
                  const SizedBox16(),
                  InkWell(
                    onTap: () {
                      final couponCode = entity[index].code.toString();

                      context
                          .read<CouponBloc>()
                          .add(SetSelectedCouponEvent(couponCode));
                    },
                    child: Container(
                      height: context.spaces.space_500,
                      decoration: BoxDecoration(
                        color: context.colors.primary,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(context.spaces.space_100),
                          bottomRight:
                              Radius.circular(context.spaces.space_100),
                        ),
                      ),
                      child: BlocBuilder<CouponBloc, CouponBlocState>(
                        builder: (context, state) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                state.selectedCoupon == couponData.code
                                    ? 'APPLIED'
                                    : 'TAP TO APPLY',
                                style: context.typography.h500
                                    .copyWith(color: context.colors.secondary),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
