import 'package:flutter/material.dart';
import 'package:resto_user/core/constants/cart_constants/cart_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class CartAppBarWidget extends StatelessWidget {
  final String title;
  final String? actionButtonName;
  final Function()? onPressed;

  const CartAppBarWidget(
      {super.key, required this.title, this.actionButtonName, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.colors.secondary,
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      elevation: 0,
      titleSpacing: context.spaces.space_300,
      title: Transform.translate(
        offset: Offset(-context.spaces.space_200, 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: context.spaces.space_100,
            ),
            Text(
              title,
              style: context.typography.h600,
            )
          ],
        ),
      ),
      actions: [
        Transform.translate(
          offset: Offset(context.spaces.space_100, 0),
          child: Padding(
              padding: EdgeInsets.only(right: context.spaces.space_300),
              child: SizedBox(
                height: context.spaces.space_400,
                width: context.spaces.space_700 * 2,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.all(context.spaces.space_50),
                        backgroundColor: context.colors.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                context.spaces.space_100))),
                    child: Text(
                      CartConstants.txtBtnCheckOut,
                      style: context.typography.h400
                          .copyWith(color: context.colors.secondary),
                    )),
              )),
        )
      ],
    );
  }
}
