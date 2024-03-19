import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/profile/profile_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/app_bar_widget.dart';
import 'package:resto_user/features/profile/presentation/widgets/feedback_bottom_sheet_widget.dart';
import 'package:resto_user/features/profile/presentation/widgets/sized_box_16.dart';

class SupportPage extends StatelessWidget {
  static const routePath = '/feedbacks';
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final constants = GetIt.I.get<ProfilePageConstants>();
    return Scaffold(
      backgroundColor: appTheme.colors.secondary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(appTheme.spaces.space_700),
          child: AppBarWidget(
            title: constants.txtFeedbacks,
            actionButtonName: constants.btnAdd,
            onPressed: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => const FeedbackBottomSheet(),
            ),
          )),
      body: Padding(
        padding: EdgeInsets.only(
            left: appTheme.spaces.space_300,
            right: appTheme.spaces.space_300,
            top: appTheme.spaces.space_200),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(appTheme.spaces.space_200),
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    border: Border.all(color: appTheme.colors.textDisabled),
                    borderRadius:
                        BorderRadius.circular(appTheme.spaces.space_100)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bad food',
                      style: appTheme.typography.h400,
                    ),
                    SizedBox(
                      height: appTheme.spaces.space_100,
                    ),
                    Text(
                      'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
                      style: appTheme.typography.ui,
                    ),
                    SizedBox(
                      height: appTheme.spaces.space_100,
                    ),
                    Text(
                      TimeOfDay.now().format(context),
                      style: appTheme.typography.small
                          .copyWith(color: appTheme.colors.textSubtlest),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox16(),
            itemCount: 5),
      ),
    );
  }
}
