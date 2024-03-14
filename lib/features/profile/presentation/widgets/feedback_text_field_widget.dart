import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class FeedbackTextFieldWidget extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final int? maxLines;
  const FeedbackTextFieldWidget(
      {super.key,
      required this.controller,
      required this.title,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: appTheme.spaces.space_300),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: appTheme.typography.h400,
          ),
          SizedBox(
            height: appTheme.spaces.space_100,
          ),
          TextField(
            maxLines: null,
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: appTheme.colors.textDisabled,
                        width: appTheme.spaces.space_25),
                    borderRadius:
                        BorderRadius.circular(appTheme.spaces.space_100)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: appTheme.colors.textDisabled,
                        width: appTheme.spaces.space_25),
                    borderRadius:
                        BorderRadius.circular(appTheme.spaces.space_100))),
          ),
        ],
      ),
    );
  }
}
