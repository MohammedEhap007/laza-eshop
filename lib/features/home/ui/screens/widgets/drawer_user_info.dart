import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza_eshop/core/utils/app_extensions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/themes/app_assets.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_text_styles.dart';

class DrawerUserInfo extends StatelessWidget {
  const DrawerUserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: context.isDarkMode()
            ? AppColors.lighterDark
            : Colors.white,
        radius: 22.5.r,
        backgroundImage: const AssetImage(
          AppAssets.imagesAvatarImage,
        ),
      ),
      title: Text(
        'Username',
        style: AppTextStyles.font16Medium,
      ),
      subtitle: Row(
        children: [
          Text(
            'Verified Profile',
            style: AppTextStyles.font12Regular.copyWith(
              color: AppColors.gray,
            ),
          ),
          horizontalSpace(2.0),
          SvgPicture.asset(
            AppAssets.iconsVerifiedIcon,
            width: 15.w,
            height: 15.h,
          ),
        ],
      ),
    );
  }
}
