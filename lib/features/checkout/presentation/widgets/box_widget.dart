import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class BoxWidget extends StatelessWidget {
  final IconData leadingIcon;
  final String content;
  final IconData? trailingIcon;
  const BoxWidget(
      {super.key,
      required this.leadingIcon,
      required this.content,
      this.trailingIcon});

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
          children: [
            Icon(leadingIcon),
            SizedBox(
              width: theme.spaces.space_100,
            ),
            Text(content),
            const Expanded(
              child: SizedBox(),
            ),
            Icon(trailingIcon)
          ],
        ),
      ),
    );
  }
}
