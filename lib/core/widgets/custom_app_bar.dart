import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../themes/app_assets.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';
import '../utils/app_extensions.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title ?? '',
        style: AppTextStyles.font16SemiBold,
      ),
      leading: CircleAvatar(
        backgroundColor: context.isDarkMode()
            ? AppColors.lightDark
            : AppColors.darkerLight,
        child: IconButton(
          padding: const EdgeInsets.all(10.0),
          icon: context.isDarkMode()
              ? SvgPicture.asset(
                  AppAssets.iconsArrowBackDarkIcon,
                  fit: BoxFit.fill,
                )
              : SvgPicture.asset(
                  AppAssets.iconsArrowBackLightIcon,
                  fit: BoxFit.fill,
                ),
          onPressed: () {
            context.pop();
          },
        ),
      ),
    );
  }
}
