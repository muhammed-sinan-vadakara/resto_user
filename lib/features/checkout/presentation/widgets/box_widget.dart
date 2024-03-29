import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class BoxWidget extends StatelessWidget {
  final String leadingIcon;
  final String content;
  final Widget? trailing;
  final TextStyle? style;
  final void Function()? onPressed;

  const BoxWidget({
    super.key,
    required this.leadingIcon,
    required this.content,
    this.trailing,
    this.onPressed,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.spaces.space_700,
      decoration: BoxDecoration(
        color: context.colors.secondary,
        boxShadow: [context.boxShadow.secondary],
        borderRadius: BorderRadius.circular(
          context.spaces.space_150,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.spaces.space_250),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
              width: 25,
              child: SvgPicture.asset(
                leadingIcon,
                colorFilter:
                    const ColorFilter.mode(Colors.black, BlendMode.srcATop),
              ),
            ),
            SizedBox(
              width: context.spaces.space_100,
            ),
            Text(
              content,
              style: style,
            ),
            const Expanded(
              child: SizedBox(),
            ),
            trailing ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
