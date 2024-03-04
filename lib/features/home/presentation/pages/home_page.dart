import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/home/presentation/widgets/appbar_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/search_field_widget.dart';

class HomePage extends StatelessWidget {
  static const routPath = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    final theme = AppTheme.of(context);
    return Scaffold(
      backgroundColor: theme.colors.secondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(theme.spaces.space_700),
        child: Padding(
          padding: EdgeInsets.only(right: theme.spaces.space_150),
          child: const AppBarWidget(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_300),
          child: Column(
            children: [
              SizedBox(
                height: theme.spaces.space_400,
              ),
              SearchFieldWidget(searchController: searchController),
            ],
          ),
        ),
      ),
    );
  }
}
