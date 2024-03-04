import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/profile/profile_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/app_bar_widget.dart';
import 'package:resto_user/features/profile/presentation/widgets/dark_theme_widget.dart';
import 'package:resto_user/features/profile/presentation/widgets/personal_info_widget.dart';
import 'package:resto_user/features/profile/presentation/widgets/profile_image_widget.dart';
import 'package:resto_user/features/profile/presentation/widgets/sized_box_16.dart';
import 'package:resto_user/features/profile/presentation/widgets/sized_box_32.dart';

class ProfilePage extends StatelessWidget {
  static const routePath = '/profile';
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final constants = GetIt.I.get<ProfilePageConstants>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appTheme.spaces.space_700),
        child: AppBarWidget(title: constants.txtProfile),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: appTheme.spaces.space_300),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileImageWidget(),
              const SizedBox32(),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Zinadine Zidane',
                  style: appTheme.typography.h600,
                ),
              ),
              const SizedBox32(),
              const Align(
                alignment: Alignment.centerLeft,
                child: PersonalInfoWidget(),
              ),
              const SizedBox16(),
              const DarkThemeWidget(),
              const SizedBox16(),
              Text(
                constants.txtSupport,
                style: appTheme.typography.h300,
              ),
              const SizedBox32(),
              Text(
                constants.txtLogout,
                style: appTheme.typography.h300,
              )
            ],
          ),
        ),
      ),
    );
  }
}
