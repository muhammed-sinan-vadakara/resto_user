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
    final constants = GetIt.I.get<ProfilePageConstants>();

    return Scaffold(
      backgroundColor: context.colors.secondary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(context.spaces.space_700),
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
            left: context.spaces.space_300,
            right: context.spaces.space_300,
            top: context.spaces.space_200),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(context.spaces.space_200),
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    border: Border.all(color: context.colors.textDisabled),
                    borderRadius:
                        BorderRadius.circular(context.spaces.space_100)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bad food',
                      style: context.typography.h400,
                    ),
                    SizedBox(
                      height: context.spaces.space_100,
                    ),
                    Text(
                      'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
                      style: context.typography.ui,
                    ),
                    SizedBox(
                      height: context.spaces.space_100,
                    ),
                    Text(
                      TimeOfDay.now().format(context),
                      style: context.typography.small
                          .copyWith(color: context.colors.textSubtlest),
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
