import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/constants/home_page/home_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class TopImageWidget extends StatelessWidget {
  final String imagePath;
  const TopImageWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final assets = GetIt.I.get<AppAssetConstants>();
    final constants = GetIt.I.get<HomeConstants>();

    return Stack(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: context.spaces.space_500 * 6.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imagePath),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: context.spaces.space_300,
          left: context.spaces.space_200,
          child: Container(
            decoration: BoxDecoration(
              color: context.colors.secondary,
              borderRadius: BorderRadius.circular(
                context.spaces.space_200,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: context.spaces.space_75,
                  horizontal: context.spaces.space_200),
              child: Ink(
                child: InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        assets.icArrowBackward,
                        width: context.spaces.space_100,
                      ),
                      SizedBox(
                        width: context.spaces.space_100,
                      ),
                      Text(
                        constants.txtOffer,
                        style: context.typography.h400,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
