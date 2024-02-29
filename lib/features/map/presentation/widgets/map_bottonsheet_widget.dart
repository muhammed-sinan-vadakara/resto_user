import 'package:flutter/material.dart';

void _viewModelBottomSheet(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback((_) async {
    await showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 300,
        child: Column(
          children: [],
        ),
      ),
    );
  });
}
