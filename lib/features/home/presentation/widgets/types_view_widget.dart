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
    int selectedOption = 1;
    bool isSelected = false;
    final theme = AppTheme.of(context);
    final constants = GetIt.I.get<HomeConstants>();
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: theme.spaces.space_300,
        vertical: theme.spaces.space_100,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: theme.colors.secondary,
          boxShadow: [theme.boxShadow.primary],
          borderRadius: BorderRadius.circular(
            theme.spaces.space_100,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(theme.spaces.space_150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                constants.txtType,
                style: theme.typography.h700,
              ),
              const Divider(),
              SizedBox(
                height: entity.types.length * theme.spaces.space_300,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: entity.types.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(text: entity.types[index].name),
                        Row(
                          children: [
                            TextWidget(text: entity.types[index].price),
                            SizedBox(
                              width: theme.spaces.space_200,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
