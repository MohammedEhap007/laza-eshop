import 'package:flutter/material.dart';
import 'package:laza_eshop/core/themes/app_assets.dart';
import 'package:laza_eshop/features/home/data/models/drawer_item_model.dart';

import 'drawer_item.dart';

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({super.key});

  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(
      title: 'Account Information',
      icon: AppAssets.iconsAccountInfoIcon,
    ),
    DrawerItemModel(title: 'Password', icon: AppAssets.iconsPasswordIcon),
    DrawerItemModel(title: 'Orders', icon: AppAssets.iconsCartIcon),
    DrawerItemModel(title: 'My Cards', icon: AppAssets.iconsMyCardsIcon),
    DrawerItemModel(title: 'Wishlist', icon: AppAssets.iconsWishlistIcon),
    DrawerItemModel(title: 'Settings', icon: AppAssets.iconsSettingIcon),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: DrawerItem(drawerItemModel: drawerItems[index]),
        );
      },
    );
  }
}
