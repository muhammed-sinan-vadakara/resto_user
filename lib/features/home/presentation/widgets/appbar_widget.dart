import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/features/profile/presentation/pages/profile_page.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final assets = GetIt.I.get<AppAssetConstants>();
    return AppBar(
      backgroundColor: context.colors.secondary,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.only(left: context.spaces.space_100),
        child: Row(
          children: [
            InkWell(
                onTap: () {},
                child: InkWell(
                  onTap: () => context.push(ProfilePage.routePath),
                  child: const CircleAvatar(
                    radius: 25,
                  ),
                )),
            SizedBox(
              width: context.spaces.space_100 * 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kozhikode',
                  style: context.typography.h800,
                ),
                Text(
                  "Palazhi",
                  style: context.typography.h100,
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        Ink(
          child: InkWell(
            borderRadius: BorderRadius.circular(context.spaces.space_100),
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.all(context.spaces.space_200),
              child: SvgPicture.asset(
                assets.icNotification,
                height: context.spaces.space_200,
                colorFilter:
                    ColorFilter.mode(context.colors.text, BlendMode.srcATop),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
