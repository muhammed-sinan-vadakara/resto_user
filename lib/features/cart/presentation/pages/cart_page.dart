import 'package:flutter/material.dart';
import 'package:resto_user/core/constants/cart_constants/cart_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/cart/presentation/widgets/app_bar_widget.dart';

class CartPage extends StatelessWidget {
  static const routPath = '/cart';
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Scaffold(
      backgroundColor: theme.colors.secondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(theme.spaces.space_700),
        child: const AppBarWidget(
          title: CartConstants.txtCartTitle,
          actionButtonName: CartConstants.txtBtnCheckOut,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_300),
        child: Column(
          children: [
            SizedBox(
              height: theme.spaces.space_400,
            ),
            ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: theme.spaces.space_200,
              ),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  height: theme.spaces.space_600 * 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: theme.colors.textDisabled),
                      borderRadius:
                          BorderRadius.circular(theme.spaces.space_100)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: theme.spaces.space_125),
                    child: Row(
                      children: [
                        Container(
                          height: theme.spaces.space_900,
                          width: theme.spaces.space_900,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(theme.spaces.space_100),
                              color: theme.colors.textDisabled),
                        ),
                        SizedBox(
                          width: theme.spaces.space_150,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: theme.spaces.space_125),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'chiken burger',
                                style: theme.typography.h400
                                    .copyWith(color: theme.colors.text),
                              ),
                              Text(
                                'Burger Factory LTD',
                                style: theme.typography.h400
                                    .copyWith(color: theme.colors.textSubtle),
                              ),
                              Text(
                                '25',
                                style: theme.typography.h400
                                    .copyWith(color: theme.colors.primary),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: theme.spaces.space_500,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: theme.spaces.space_300,
                                width: theme.spaces.space_300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        theme.spaces.space_100),
                                    color: theme.colors.textInverse),
                                child: Icon(
                                  Icons.remove,
                                  size: theme.spaces.space_200,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: theme.spaces.space_150,
                            ),
                            const Text('1'),
                            SizedBox(
                              width: theme.spaces.space_150,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: theme.spaces.space_300,
                                width: theme.spaces.space_300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        theme.spaces.space_100),
                                    color: theme.colors.primary),
                                child: Icon(
                                  Icons.add,
                                  size: theme.spaces.space_200,
                                  color: theme.colors.secondary,
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
            )
          ],
        ),
      ),
    );
  }
}
