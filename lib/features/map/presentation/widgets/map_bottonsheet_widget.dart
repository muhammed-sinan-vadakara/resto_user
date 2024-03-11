import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/app_assets/app_asset_constant.dart';
import 'package:resto_user/core/themes/app_theme.dart';

void viewModelBottomSheet(BuildContext context) {
  // WidgetsBinding.instance.addPostFrameCallback((_) {
  final theme = AppTheme.of(context).typography;
  final space = AppTheme.of(context).spaces;
  final color = AppTheme.of(context).colors;
  final assets = GetIt.I.get<AppAssetConstants>();
  showModalBottomSheet(
    context: context,
    builder: (context) => SizedBox(
      height: 400,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          SizedBox(
            height: space.space_400,
          ),
          SvgPicture.asset(assets.icLocation),
          SizedBox(
            height: space.space_500,
          ),
          Text(
            "Device location not enabled",
            style: theme.h700,
          ),
          SizedBox(
            height: space.space_100,
          ),
          Text(
            "Enable your device location for a better\ndelivery experience",
            style: theme.h300,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: space.space_600,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(space.space_150)),
                  backgroundColor: color.primary,
                  minimumSize: Size(space.space_700 * 6, space.space_600)),
              onPressed: () {},
              child: Text("Enable location permission",
                  style: theme.h300.copyWith(color: color.secondary))),
          SizedBox(
            height: space.space_400,
          ),
          TextButton(
              onPressed: () {},
              child: Text("Search location manually",
                  style: theme.h300.copyWith(
                    color: color.primary,
                  ))),
        ],
      ),
    ),
  );
}
