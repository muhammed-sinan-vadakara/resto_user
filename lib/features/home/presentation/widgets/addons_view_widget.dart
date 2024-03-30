import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/home_page/home_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/home/domain/entity/product_entity/product_entity.dart';
import 'package:resto_user/features/home/presentation/widgets/check_box_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/text_widget.dart';

class AddonsViewWidget extends HookWidget {
  final ProductEntity entity;

  const AddonsViewWidget({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<HomeConstants>();

    final selectedAddons = useState<Set<String>>({});

    /// Update the selected items list based on the checkbox state
    void selectOrUnSelectAddon(String addonId, bool isSelected) {
      if (isSelected) {
        selectedAddons.value = {...selectedAddons.value, addonId};
      } else {
        selectedAddons.value = {...selectedAddons.value}..remove(addonId);
      }
    }

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
                constants.txtAddOns,
                style: context.typography.h700,
              ),
              const Divider(),
              ListView.builder(
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
                            isChecked: selectedAddons.value
                                .contains(entity.addOns[index].id),
                            onChanged: (checked) => selectOrUnSelectAddon(
                                entity.addOns[index].id, checked ?? false),
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
