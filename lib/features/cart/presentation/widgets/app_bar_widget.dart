import 'package:flutter/material.dart';
import 'package:resto_user/core/constants/cart_constants/cart_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final String? actionButtonName;
  final Function()? onPressed;
  const AppBarWidget(
      {super.key, required this.title, this.actionButtonName, this.onPressed});
  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return AppBar(
      backgroundColor: appTheme.colors.secondary,
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      elevation: 0,
      titleSpacing: appTheme.spaces.space_300,
      title: Transform.translate(
        offset: Offset(-appTheme.spaces.space_200, 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: appTheme.spaces.space_100,
            ),
            Text(
              title,
              style: appTheme.typography.h600,
            )
          ],
        ),
      ),
      actions: [
        Transform.translate(
          offset: Offset(appTheme.spaces.space_100, 0),
          child: Padding(
              padding: EdgeInsets.only(right: appTheme.spaces.space_300),
              child: SizedBox(
                height: appTheme.spaces.space_400,
                width: appTheme.spaces.space_700 * 2,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.all(appTheme.spaces.space_50),
                        backgroundColor: AppTheme.of(context).colors.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                appTheme.spaces.space_100))),
                    child: Text(
                      CartConstants.txtBtnCheckOut,
                      style: appTheme.typography.h400
                          .copyWith(color: appTheme.colors.secondary),
                    )),
              )),
        )
      ],
    );
  }
}
