import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/home/domain/entity/category_entity/category_entity.dart';
import 'package:resto_user/features/home/presentation/bloc/category_bloc/category_bloc.dart';

class CategoryListViewWidget extends HookWidget {
  final List<CategoryEntity> entity;
  const CategoryListViewWidget({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: context.spaces.space_150),
            child: SizedBox(
              width: context.spaces.space_900,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      context.read<CategoryBloc>().add(
                            SelectCategoryEvent(entity[index].id),
                          );
                    },
                    child: CircleAvatar(
                      radius: context.spaces.space_250,
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
  }
}
