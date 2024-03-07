import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/color_palette.dart';
import 'package:resto_user/core/themes/extensions/boxshadow_extension.dart';
import 'package:resto_user/core/themes/extensions/color_extension.dart';
import 'package:resto_user/core/themes/extensions/space_extension.dart';
import 'package:resto_user/core/themes/extensions/typography_extension.dart';


final darkTheme = ThemeData(
  brightness: Brightness.dark,
  extensions: [
    AppColorExtension(
      primary: AppColorPalettes.red400,
      secondary: AppColorPalettes.grey1000,
      text: AppColorPalettes.white500,
      textInverse: AppColorPalettes.blue900,
      textSubtle: AppColorPalettes.gray300,
      textSubtlest: AppColorPalettes.grey400,
      textDisabled: AppColorPalettes.grey350,
      bottomNavBorder: AppColorPalettes.grey350.withOpacity(0.2),
    ),
    AppSpaceExtension.fromBaseSpace(8),
    AppTypographyExtension.fromColors(
      defaultFontColor: AppColorPalettes.white500,
      linkColor: Colors.blue,
      dimFontColor: AppColorPalettes.grey400,
    ),
    AppBoxShadowExtension(
      primary: BoxShadow(
        blurRadius: 1,
        spreadRadius: 0,
        color: Colors.grey.withOpacity(1),
      ),
      secondary: BoxShadow(
        blurRadius: 1,
        spreadRadius: 0,
        color: Colors.grey.withOpacity(1),
      ),
    )
  ],
);


