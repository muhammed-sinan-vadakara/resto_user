import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/home_page/home_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/home/presentation/widgets/counter_button_widget.dart';

class AddCartButtonWidget extends HookWidget {
  final void Function()? onPressed;
  final VoidCallback increment;
  final VoidCallback decrement;
  final String value;
  const AddCartButtonWidget({
    super.key,
    required this.onPressed,
    required this.increment,
    required this.decrement,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<HomeConstants>();

    return Container(
      width: MediaQuery.sizeOf(context).width,
      color: context.colors.secondary,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: context.spaces.space_200,
            vertical: context.spaces.space_300),
        child: Row(
          children: [
            CounterButtonWidget(
              color: const Color(0xffffe6e6),
              icon: Icon(
                Icons.remove,
                color: context.colors.primary,
              ),
              onPressed: decrement,
            ),
            SizedBox(width: context.spaces.space_200),
            Text(value, style: context.typography.h700),
            SizedBox(width: context.spaces.space_200),
            CounterButtonWidget(
              color: context.colors.primary,
              icon: Icon(
                Icons.add,
                color: context.colors.secondary,
              ),
              onPressed: increment,
            ),
            SizedBox(width: context.spaces.space_200),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      context.spaces.space_100,
                    ),
                  ),
                  backgroundColor: context.colors.primary,
                ),
                onPressed: onPressed,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: context.spaces.space_150 * 1.2,
                  ),
                  child: Text(
                    constants.txtAddCart,
                    style: context.typography.h400.copyWith(
                      color: context.colors.secondary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
