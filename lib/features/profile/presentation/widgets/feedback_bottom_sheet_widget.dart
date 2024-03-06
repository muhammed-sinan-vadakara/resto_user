import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/profile/profile_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/elevated_bottom_button_widget.dart';
import 'package:resto_user/features/profile/presentation/widgets/feedback_text_field_widget.dart';
import 'package:resto_user/features/profile/presentation/widgets/sized_box_16.dart';
import 'package:resto_user/features/profile/presentation/widgets/sized_box_32.dart';

class FeedbackBottomSheet extends HookWidget {
  const FeedbackBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final appTheme = AppTheme.of(context);
    final constants = GetIt.I.get<ProfilePageConstants>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              color: appTheme.colors.secondary,
              borderRadius: BorderRadius.circular(appTheme.spaces.space_200)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox32(),
                Text(
                  constants.txtAddFeedback,
                  style: appTheme.typography.h600,
                ),
                const SizedBox32(),
                FeedbackTextFieldWidget(
                  controller: titleController,
                  title: constants.txtTitle,
                ),
                const SizedBox16(),
                FeedbackTextFieldWidget(
                  controller: descriptionController,
                  title: constants.txtDescription,
                  // maxLines: 3,
                ),
                const SizedBox16(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: appTheme.spaces.space_300),
                  child: Container(
                    height: appTheme.spaces.space_700,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: appTheme.colors.textDisabled,
                            width: appTheme.spaces.space_25),
                        borderRadius:
                            BorderRadius.circular(appTheme.spaces.space_100)),
                    child: Center(
                      child: Text(
                        constants.txtaddAttachments,
                        style: appTheme.typography.h400,
                      ),
                    ),
                  ),
                ),
                ElevatedBottomButtonWidget(
                    text: constants.txtSend, onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
