import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class BoxWidget extends StatelessWidget {
  final String leadingIcon;
  final String content;
  final IconData? trailingIcon;
  final void Function()? onPressed;
  const BoxWidget(
      {super.key,
      required this.leadingIcon,
      required this.content,
      this.trailingIcon,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      height: theme.spaces.space_700,
      decoration: BoxDecoration(
        color: theme.colors.textInverse,
        borderRadius: BorderRadius.circular(
          theme.spaces.space_150,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_300),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              height: theme.spaces.space_300,
              leadingIcon,
              colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcATop),
            ),
            SizedBox(
              width: theme.spaces.space_100,
            ),
            Text(content),
            const Expanded(
              child: SizedBox(),
            ),
            IconButton(onPressed: onPressed, icon: Icon(trailingIcon))
          ],
        ),
      ),
    );
  }
}
