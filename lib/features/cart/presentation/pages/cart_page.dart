import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:resto_user/core/constants/cart_constants/cart_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:resto_user/features/cart/presentation/widgets/cart_app_bar_widget.dart';

class CartPage extends HookWidget {
  static const routPath = '/cart';
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<CartBloc>().add(GetCartevent());
      return null;
    }, []);

    return Scaffold(
      backgroundColor: context.colors.secondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(context.spaces.space_700),
        child: const CartAppBarWidget(
          title: CartConstants.txtCartTitle,
          actionButtonName: CartConstants.txtBtnCheckOut,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.spaces.space_300),
        child: Column(
          children: [
            SizedBox(
              height: context.spaces.space_400,
            ),
            ListView.separated(
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
                      borderRadius:
                          BorderRadius.circular(context.spaces.space_100)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.spaces.space_125),
                    child: Row(
                      children: [
                        Container(
                          height: context.spaces.space_900,
                          width: context.spaces.space_900,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  context.spaces.space_100),
                              color: context.colors.textDisabled),
                        ),
                        SizedBox(
                          width: context.spaces.space_150,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: context.spaces.space_125),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'xcvbn',
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
                                    borderRadius: BorderRadius.circular(
                                        context.spaces.space_100),
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
                                    borderRadius: BorderRadius.circular(
                                        context.spaces.space_100),
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
            )
          ],
        ),
      ),
    );
  }
}
