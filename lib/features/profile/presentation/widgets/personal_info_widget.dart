import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/profile/profile_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/profile/presentation/widgets/personal_info_row_widget.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<ProfilePageConstants>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          constants.txtPersonalInfo,
          style: context.typography.h400,
        ),
        SizedBox(
          height: context.spaces.space_100,
        ),
        Container(
          padding: EdgeInsets.all(context.spaces.space_200),
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              border: Border.all(color: context.colors.textDisabled),
              borderRadius: BorderRadius.circular(context.spaces.space_200)),
          child: Column(
            children: [
              PersonalInfoRowWidget(
                  keyName: constants.txtUserName, value: 'Shamjad'),
              SizedBox(
                height: context.spaces.space_200,
              ),
              PersonalInfoRowWidget(
                  keyName: constants.txtMobileNumber, value: '9746395588'),
              SizedBox(
                height: context.spaces.space_200,
              ),
              PersonalInfoRowWidget(
                  keyName: constants.txtEmail, value: 'shamjad@gmail.com')
            ],
          ),
        ),
      ],
    );
  }
}
