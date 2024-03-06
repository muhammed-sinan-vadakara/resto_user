import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/home/domain/entity/category_entity.dart';

class CategoryListViewWidget extends StatelessWidget {
  final List<CategoryEntity> entity;
  const CategoryListViewWidget({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_150),
            child: SizedBox(
              width: theme.spaces.space_900,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: theme.spaces.space_250,
                      backgroundImage: NetworkImage(entity[index].imagePath),
                    ),
                  ),
                  Text(
                    entity[index].name,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          );
        },
        itemCount: entity.length);
    ;
  }
}
