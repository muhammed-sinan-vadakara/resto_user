import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/utils/image_picker_utils.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final assets = GetIt.I.get<AppAssetConstants>();
    final appTheme = AppTheme.of(context);
    return Align(
      alignment: Alignment.center,
      child: Container(
          height: appTheme.spaces.space_300 * 7,
          width: appTheme.spaces.space_300 * 7,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: appTheme.colors.textDisabled,
                  width: appTheme.spaces.space_25)),
          child: Stack(
            children: [
              Center(
                child: SvgPicture.asset(
                  assets.icUser,
                  height: appTheme.spaces.space_500,
                ),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              appTheme.colors.primary)),
                      onPressed: () =>
                          ImagePickerUtils.showDialogueForImagePicker(context),
                      icon: SvgPicture.asset(assets.icPencil)))
            ],
          )),
    );
  }
}
