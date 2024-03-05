import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constant.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final assets = GetIt.I.get<AppAssetConstants>();
    return AppBar(
      backgroundColor: theme.colors.secondary,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.only(left: theme.spaces.space_100),
        child: Row(
          children: [
            InkWell(
                onTap: () {},
                child: CircleAvatar(
                  radius: 25,
                )),
            SizedBox(
              width: theme.spaces.space_100 * 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kozhikode',
                  style: theme.typography.h800,
                ),
                Text(
                  "Palazhi",
                  style: theme.typography.h100,
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        Ink(
          child: InkWell(
            borderRadius: BorderRadius.circular(theme.spaces.space_100),
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.all(theme.spaces.space_200),
              child: SvgPicture.asset(
                assets.icNotification,
                height: theme.spaces.space_200,
                colorFilter:
                    ColorFilter.mode(theme.colors.text, BlendMode.srcATop),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
