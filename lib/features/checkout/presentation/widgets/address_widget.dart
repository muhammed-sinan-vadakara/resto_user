import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/constants/checkout_page/checkout_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<CheckoutPageConstants>();
    final theme = AppTheme.of(context);
    final assets = GetIt.I.get<AppAssetConstants>();
    return Container(
      decoration: BoxDecoration(
        color: theme.colors.secondary,
        boxShadow: [theme.boxShadow.secondary],
        borderRadius: BorderRadius.circular(theme.spaces.space_150),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: theme.spaces.space_250,
            vertical: theme.spaces.space_200),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  constants.txtAddress,
                  style: theme.typography.h600,
                ),
                const Expanded(child: SizedBox()),
                Ink(
                  child: InkWell(
                      borderRadius:
                          BorderRadius.circular(theme.spaces.space_100),
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: theme.spaces.space_250,
                      )),
                ),
              ],
            ),
            Divider(
              color: theme.colors.textDisabled,
            ),
            SizedBox(
              height: theme.spaces.space_100,
            ),
            Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 25,
                  child: SvgPicture.asset(
                    assets.icLocationAddress,
                    colorFilter:
                        const ColorFilter.mode(Colors.black, BlendMode.srcATop),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: theme.spaces.space_100),
                  child: SizedBox(
                    width: theme.spaces.space_300 * 11,
                    child: Text(
                      'ManikyaNagar,Street-Number seventeen,sahembupram,Ernakulam,kerala',
                      style: theme.typography.h200,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
