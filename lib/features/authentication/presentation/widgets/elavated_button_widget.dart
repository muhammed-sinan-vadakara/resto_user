import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class AuthElevatedButtonWidget extends StatelessWidget {
  final Widget text;
  final Color colours;

  final void Function() onPressed;
  const AuthElevatedButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    required this.colours,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: context.spaces.space_300,
        horizontal: context.spaces.space_300,
      ),
      child: SizedBox(
        height: context.spaces.space_600,
        width: MediaQuery.sizeOf(context).width,
        child: ElevatedButton(
            style: ButtonStyle(
              elevation: const MaterialStatePropertyAll(0),
              backgroundColor: MaterialStatePropertyAll(colours),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    context.spaces.space_100,
                  ),
                ),
              ),
            ),
            onPressed: onPressed,
            child: text
            // Text(
            //   text,
            //   style: context.typography.uiSemibold
            //       .copyWith(color: context.colors.secondary),
            // ),
            ),
      ),
    );
  }
}
