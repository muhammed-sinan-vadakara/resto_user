import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';

void viewModelBottomSheet(BuildContext context) {
  final assets = GetIt.I.get<AppAssetConstants>();

  showModalBottomSheet(
    context: context,
    builder: (context) => SizedBox(
      height: 400,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          SizedBox(
            height: context.spaces.space_400,
          ),
          SvgPicture.asset(assets.icLocation),
          SizedBox(
            height: context.spaces.space_500,
          ),
          Text(
            "Device location not enabled",
            style: context.typography.h700,
          ),
          SizedBox(
            height: context.spaces.space_100,
          ),
          Text(
            "Enable your device location for a better\ndelivery experience",
            style: context.typography.h300,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: context.spaces.space_600,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(context.spaces.space_150)),
                  backgroundColor: context.colors.primary,
                  minimumSize: Size(
                      context.spaces.space_700 * 6, context.spaces.space_600)),
              onPressed: () {},
              child: Text("Enable location permission",
                  style: context.typography.h300
                      .copyWith(color: context.colors.secondary))),
          SizedBox(
            height: context.spaces.space_400,
          ),
          TextButton(
              onPressed: () {},
              child: Text("Search location manually",
                  style: context.typography.h300.copyWith(
                    color: context.colors.primary,
                  ))),
        ],
      ),
    ),
  );
}
