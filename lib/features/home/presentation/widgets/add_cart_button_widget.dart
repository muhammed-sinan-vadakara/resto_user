import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class AddCartButtonWidget extends StatelessWidget {
  const AddCartButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final assets = GetIt.I.get<AppAssetConstants>();

    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 60,
      color: context.colors.secondary,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.spaces.space_300),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffffe6e6),
                borderRadius: BorderRadius.circular(context.spaces.space_100),
              ),
              child: Ink(
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: context.spaces.space_200,
                      horizontal: context.spaces.space_100,
                    ),
                    child: SvgPicture.asset(
                      assets.icMinimize,
                      height: context.spaces.space_200,
                      width: context.spaces.space_25,
                      colorFilter: ColorFilter.mode(
                        context.colors.primary,
                        BlendMode.srcATop,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: context.spaces.space_200,
            ),
            Text(
              '1',
              style: context.typography.h700,
            ),
            SizedBox(
              width: context.spaces.space_200,
            ),
            Container(
              decoration: BoxDecoration(
                color: context.colors.primary,
                borderRadius: BorderRadius.circular(context.spaces.space_100),
              ),
              child: Ink(
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(context.spaces.space_200),
                    child: SvgPicture.asset(
                      assets.icAdd,
                      height: context.spaces.space_200,
                      colorFilter: ColorFilter.mode(
                          context.colors.secondary, BlendMode.srcATop),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: context.spaces.space_400,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    context.spaces.space_100,
                  ),
                ),
                backgroundColor: context.colors.primary,
              ),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.spaces.space_400,
                  vertical: context.spaces.space_150 * 1.2,
                ),
                child: Text(
                  'Add To Cart',
                  style: context.typography.h400.copyWith(
                    color: context.colors.secondary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
