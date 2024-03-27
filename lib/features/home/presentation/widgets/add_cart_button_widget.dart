import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class AddCartButtonWidget extends StatelessWidget {
  const AddCartButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
            ),
            SizedBox(width: context.spaces.space_200),
            Text('1', style: context.typography.h700),
            SizedBox(width: context.spaces.space_200),
            CounterButtonWidget(
              color: context.colors.primary,
              icon: Icon(
                Icons.add,
                color: context.colors.secondary,
              ),
              onPressed: () {},
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
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: context.spaces.space_150 * 1.2,
                  ),
                  child: Text(
                    'Add To Cart',
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

class CounterButtonWidget extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;
  final Color color;

  const CounterButtonWidget({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(context.spaces.space_100),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(context.spaces.space_100),
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: context.spaces.space_150,
              horizontal: context.spaces.space_150,
            ),
            child: icon,
          ),
        ),
      ),
    );
  }
}
