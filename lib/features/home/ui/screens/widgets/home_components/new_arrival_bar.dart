import 'package:flutter/material.dart';

import '../../../../../../core/routes/routes.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../core/utils/app_extensions.dart';

class NewArrivalBar extends StatelessWidget {
  const NewArrivalBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'New Arrival',
          style: AppTextStyles.font16Medium,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.allProductsScreen);
          },
          child: Text(
            'View All',
            style: AppTextStyles.font12Regular.copyWith(
              color: AppColors.gray,
            ),
          ),
        ),
      ],
    );
  }
}
