import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/home_page/home_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/home/domain/entity/product_entity/product_entity.dart';
import 'package:resto_user/features/home/presentation/widgets/check_box_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/text_widget.dart';

class AddonsViewWidget extends StatelessWidget {
  final ProductEntity entity;
  const AddonsViewWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<HomeConstants>();
    return Padding(
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
          padding: EdgeInsets.all(context.spaces.space_150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                constants.txtAddOns,
                style: context.typography.h700,
              ),
              const Divider(),
              SizedBox(
                height: entity.addOns.length * context.spaces.space_300,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: entity.addOns.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(text: entity.addOns[index].name),
                        Row(
                          children: [
                            TextWidget(text: entity.addOns[index].price),
                            SizedBox(
                              width: context.spaces.space_200,
                            ),
                            CheckboxWidget(
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
