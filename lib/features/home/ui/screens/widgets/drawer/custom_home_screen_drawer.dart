import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza_eshop/core/themes/app_colors.dart';
import 'package:laza_eshop/core/themes/app_text_styles.dart';
import 'package:laza_eshop/core/utils/app_extensions.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/drawer/drawer_item.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/drawer/drawer_items_list_view.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/themes/app_assets.dart';
import '../../../../data/models/drawer_item_model.dart';
import 'drawer_close_icon_button.dart';
import 'drawer_user_info.dart';

class CustomHomeScreenDrawer extends StatelessWidget {
  const CustomHomeScreenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.isDarkMode()
          ? AppColors.lightDark
          : AppColors.darkerLight,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0),
        borderSide: BorderSide.none,
      ),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 5.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DrawerCloseIconButton(),
            verticalSpace(30.0),
            const DrawerUserInfo(),
            verticalSpace(40.0),
            Row(
              children: [
                const DrawerItem(
                  drawerItemModel: DrawerItemModel(
                    icon: AppAssets.iconsDarkModeIcon,
                    title: 'Dark Mode',
                  ),
                ),
                const Spacer(),
                Switch(
                  value: false,
                  onChanged: (bool value) {},
                ),
              ],
            ),
            const DrawerItemsListView(),
            const Spacer(),
            const DrawerItem(
              drawerItemModel: DrawerItemModel(
                title: 'Logout',
                icon: AppAssets.iconsLogoutIcon,
              ),
              isLogoutItem: true,
            ),
          ],
        ),
      ),
    );
  }
}
