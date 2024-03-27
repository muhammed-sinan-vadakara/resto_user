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

    final assets = GetIt.I.get<AppAssetConstants>();
    return Container(
      decoration: BoxDecoration(
        color: context.colors.secondary,
        boxShadow: [context.boxShadow.secondary],
        borderRadius: BorderRadius.circular(context.spaces.space_150),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: context.spaces.space_250,
            vertical: context.spaces.space_200),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  constants.txtAddress,
                  style: context.typography.h600,
                ),
                const Expanded(child: SizedBox()),
                Ink(
                  child: InkWell(
                      borderRadius:
                          BorderRadius.circular(context.spaces.space_100),
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: context.spaces.space_250,
                      )),
                ),
              ],
            ),
            Divider(
              color: context.colors.textDisabled,
            ),
            SizedBox(
              height: context.spaces.space_100,
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
                  padding: EdgeInsets.symmetric(
                      horizontal: context.spaces.space_100),
                  child: SizedBox(
                    width: context.spaces.space_300 * 11,
                    child: Text(
                      'ManikyaNagar,Street-Number seventeen,sahembupram,Ernakulam,kerala',
                      style: context.typography.h200,
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
