import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/cubits/theme_cubit.dart';
import '../../../../../../core/enums/theme_mode_state_enum.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/themes/app_assets.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/utils/app_extensions.dart';
import '../../../../data/models/drawer_item_model.dart';
import 'drawer_close_icon_button.dart';
import 'drawer_item.dart';
import 'drawer_items_list_view.dart';
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
                  value:
                      // check if the current theme is dark mode
                      context.read<ThemeCubit>().currentTheme ==
                          ThemeModeState.dark ||
                      // if the current theme is system and the device is in dark mode
                      (context.read<ThemeCubit>().currentTheme ==
                              ThemeModeState.system &&
                          context.isDarkMode()),
                  onChanged: (bool value) {
                    context.read<ThemeCubit>().selectTheme(
                      value ? ThemeModeState.dark : ThemeModeState.light,
                    );
                  },
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
