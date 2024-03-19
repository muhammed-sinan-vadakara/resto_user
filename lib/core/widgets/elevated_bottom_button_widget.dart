import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class ElevatedBottomButtonWidget extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const ElevatedBottomButtonWidget(
      {super.key, required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: appTheme.spaces.space_300,
          horizontal: appTheme.spaces.space_300),
      child: SizedBox(
        height: appTheme.spaces.space_600,
        width: MediaQuery.sizeOf(context).width,
        child: ElevatedButton(
            style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor:
                    MaterialStatePropertyAll(appTheme.colors.primary),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(appTheme.spaces.space_100)))),
            onPressed: onPressed,
            child: Text(
              text,
              style: appTheme.typography.uiSemibold
                  .copyWith(color: appTheme.colors.secondary),
            )),
      ),
    );
  }
}
