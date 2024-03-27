import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/home_page/home_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/home/domain/entity/product_entity/product_entity.dart';
import 'package:resto_user/features/home/presentation/widgets/radio_button_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/text_widget.dart';

class TypesViewWidget extends StatelessWidget {
  final ProductEntity entity;

  const TypesViewWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<HomeConstants>();

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.spaces.space_200,
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
          padding: EdgeInsets.all(context.spaces.space_150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                constants.txtType,
                style: context.typography.h700,
              ),
              const Divider(),
              ListView.separated(
                shrinkWrap: true,
                itemCount: entity.types.length,
                separatorBuilder: (context, index) =>
                    SizedBox(height: context.spaces.space_100),
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(text: entity.types[index].name),
                      Row(
                        children: [
                          TextWidget(text: entity.types[index].price),
                          SizedBox(
                            width: context.spaces.space_200,
                          ),
                          RadioButtonWidget(
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
