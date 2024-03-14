import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class BoxWidget extends StatelessWidget {
  final String leadingIcon;
  final String content;

  final Widget? widget;
  const BoxWidget(
      {super.key,
      required this.leadingIcon,
      required this.content,
      this.widget});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      height: theme.spaces.space_700,
      decoration: BoxDecoration(
        color: theme.colors.secondary,
        boxShadow: [theme.boxShadow.secondary],
        borderRadius: BorderRadius.circular(
          theme.spaces.space_150,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_250),
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
              width: theme.spaces.space_100,
            ),
            Text(
              content,
              style: theme.typography.h400,
            ),
            const Expanded(
              child: SizedBox(),
            ),
            widget ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
