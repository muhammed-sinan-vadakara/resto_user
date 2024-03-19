import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/profile/presentation/widgets/sized_box_16.dart';

class OverviewBottomSheetWidget extends StatelessWidget {
  const OverviewBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(theme.spaces.space_300),
            child: Container(
              height: theme.spaces.space_500 * 10,
              decoration: BoxDecoration(
                color: theme.colors.secondary,
                boxShadow: [theme.boxShadow.primary],
                borderRadius: BorderRadius.circular(
                  theme.spaces.space_100,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(
                  theme.spaces.space_100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: theme.spaces.space_500 * 5,
                      decoration: BoxDecoration(
                        color: theme.colors.text,
                        borderRadius: BorderRadius.circular(
                          theme.spaces.space_100,
                        ),
                      ),
                    ),
                    const SizedBox16(),
                    Text(
                      'data',
                      style: theme.typography.h600,
                    ),
                    const SizedBox16(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('data'),
                        Text('data'),
                        Text('data'),
                      ],
                    ),
                    const SizedBox16(),
                    const Text(
                        'Biryani is a flavorful and aromatic rice dish that originated in the Indian subcontinent,but has gained popularity worldwide Biryani  a flavorful and aromatic rice dish that originated in the Indian subcontinent, but has gained popularity worldwide.')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
