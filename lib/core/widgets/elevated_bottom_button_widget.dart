import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class ElevatedBottomButtonWidget extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const ElevatedBottomButtonWidget(
      {super.key, required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: context.spaces.space_300,
          horizontal: context.spaces.space_300),
      child: SizedBox(
        height: context.spaces.space_600,
        width: MediaQuery.sizeOf(context).width,
        child: ElevatedButton(
            style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor:
                    MaterialStatePropertyAll(context.colors.primary),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(context.spaces.space_100)))),
            onPressed: onPressed,
            child: Text(
              text,
              style: context.typography.uiSemibold
                  .copyWith(color: context.colors.secondary),
            )),
      ),
    );
  }
}
