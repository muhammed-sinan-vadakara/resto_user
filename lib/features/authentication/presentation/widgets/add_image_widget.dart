import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/constants/authentication/authentication_constant.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class AddImageWidget extends StatelessWidget {
  const AddImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final images = GetIt.I.get<AppAssetConstants>();
    final constants = GetIt.I.get<AuthenticationConstant>();
    final appTheme = AppTheme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          images.icUser,
          height: appTheme.spaces.space_500,
          colorFilter:
              ColorFilter.mode(appTheme.colors.textDisabled, BlendMode.srcATop),
        ),
        const SizedBox(),
        Text(
          constants.txtName,
          style: appTheme.typography.uiSemibold
              .copyWith(color: appTheme.colors.textDisabled),
        )
      ],
    );
  }
}
