import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/features/map/data/datasource/map_search_datasource_impl.dart';

class MapTextFieldWidget extends StatelessWidget {
  final TextEditingController searchcontroller;
  const MapTextFieldWidget({super.key, required this.searchcontroller});

  @override
  Widget build(BuildContext context) {
    final assets = GetIt.I.get<AppAssetConstants>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: TextField(
        controller: searchcontroller,
        textCapitalization: TextCapitalization.words,
        onChanged: (value) {
          print(value);
        },
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              child: SvgPicture.asset(
                assets.icSearch,
              ),
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: "Search",
          hintStyle: const TextStyle(
            color: Colors.black,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
