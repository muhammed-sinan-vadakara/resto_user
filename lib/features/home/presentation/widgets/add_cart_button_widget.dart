import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/profile/presentation/widgets/sized_box_16.dart';

class AddCartButtonWidget extends StatelessWidget {
  const AddCartButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final assets = GetIt.I.get<AppAssetConstants>();
    final theme = AppTheme.of(context);
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 60,
      color: theme.colors.secondary,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_300),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xffffe6e6),
                borderRadius: BorderRadius.circular(theme.spaces.space_100),
              ),
              child: Ink(
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: theme.spaces.space_200,
                      horizontal: theme.spaces.space_100,
                    ),
                    child: SvgPicture.asset(
                      assets.icMinimize,
                      height: theme.spaces.space_200,
                      width: theme.spaces.space_25,
                      colorFilter: ColorFilter.mode(
                        theme.colors.primary,
                        BlendMode.srcATop,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: theme.spaces.space_200,
            ),
            Text(
              '1',
              style: theme.typography.h700,
            ),
            SizedBox(
              width: theme.spaces.space_200,
            ),
            Container(
              decoration: BoxDecoration(
                color: theme.colors.primary,
                borderRadius: BorderRadius.circular(theme.spaces.space_100),
              ),
              child: Ink(
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(theme.spaces.space_200),
                    child: SvgPicture.asset(
                      assets.icAdd,
                      height: theme.spaces.space_200,
                      colorFilter: ColorFilter.mode(
                          theme.colors.secondary, BlendMode.srcATop),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: theme.spaces.space_400,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    theme.spaces.space_100,
                  ),
                ),
                backgroundColor: theme.colors.primary,
              ),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: theme.spaces.space_400,
                  vertical: theme.spaces.space_150 * 1.2,
                ),
                child: Text(
                  'Add To Cart',
                  style: theme.typography.h400.copyWith(
                    color: theme.colors.secondary,
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
