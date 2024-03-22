import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/my_order/my_order_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/history/presentation/widgets/product_details_widget.dart';

class CurrentOrdersListviewWidget extends StatelessWidget {
  const CurrentOrdersListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final constants = GetIt.I.get<MyOrderPageConstants>();
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: appTheme.spaces.space_300,
              vertical: appTheme.spaces.space_150),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height / 6.80,
            decoration: BoxDecoration(
                border:
                    Border.all(width: 1.3, color: appTheme.colors.textDisabled),
                borderRadius: BorderRadius.circular(appTheme.spaces.space_100)),

            /// image
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: appTheme.spaces.space_125),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height / 10,
                    width: MediaQuery.sizeOf(context).width / 4.50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.kitchensanctuary.com/wp-content/uploads/2019/08/Crispy-Chicken-Burger-square-FS-4518.jpg"),
                            fit: BoxFit.fill),
                        borderRadius:
                            BorderRadius.circular(appTheme.spaces.space_100)),
                  ),
                ),
                ProductDetailsWidget(
                  text: constants.txtViewDetails,
                  textColor: appTheme.colors.primary,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
