import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/home_page/home_constants.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class SearchFieldWidget extends StatelessWidget {
  final TextEditingController searchController;
  const SearchFieldWidget({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final assets = GetIt.I.get<AppAssetConstants>();
    final constants = GetIt.I.get<HomeConstants>();
    return TextField(
      controller: searchController,
      onChanged: (keyword) {},
      cursorColor: theme.colors.text,
      decoration: InputDecoration(
        hintText: constants.txtSearch,
        hintStyle: theme.typography.h400.copyWith(
            fontWeight: FontWeight.w400, color: theme.colors.textSubtlest),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(theme.spaces.space_100),
          borderSide: BorderSide(color: theme.colors.textSubtle, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(theme.spaces.space_100),
          borderSide: BorderSide(color: theme.colors.textSubtle, width: 1),
        ),
        suffixIcon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              assets.icSearch,
              width: theme.spaces.space_250,
            ),
          ],
        ),
      ),
    );
    
  }
}
