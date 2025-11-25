import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/utils/app_extensions.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../data/models/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    this.isLogoutItem,
  });
  final DrawerItemModel drawerItemModel;

  final bool? isLogoutItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        children: [
          SvgPicture.asset(
            drawerItemModel.icon,
            width: 25.w,
            height: 25.h,
            fit: BoxFit.scaleDown,
            colorFilter: ColorFilter.mode(
              isLogoutItem ?? false
                  ? AppColors.lightRed
                  : Theme.of(context).colorScheme.onSurface,
              BlendMode.srcIn,
            ),
          ),
          horizontalSpace(10.0),
          Text(
            drawerItemModel.title,
            style: AppTextStyles.font14Regular.copyWith(
              color: isLogoutItem ?? false
                  ? AppColors.lightRed
                  : Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
