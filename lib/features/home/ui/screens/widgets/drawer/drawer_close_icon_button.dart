import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/utils/app_extensions.dart';

import '../../../../../../core/themes/app_assets.dart';
import '../../../../../../core/themes/app_colors.dart';

class DrawerCloseIconButton extends StatelessWidget {
  const DrawerCloseIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22.5.r,
      backgroundColor: context.isDarkMode()
          ? AppColors.lighterDark
          : Colors.white,
      child: IconButton(
        onPressed: () {
          Scaffold.of(context).closeDrawer();
        },
        icon: SvgPicture.asset(
          AppAssets.iconsCloseMenuIcon,
          width: 25.w,
          height: 25.h,
          fit: BoxFit.scaleDown,
          colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.onSurface,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
