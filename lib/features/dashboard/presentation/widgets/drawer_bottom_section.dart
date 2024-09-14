import 'package:flutter/material.dart';

import '../../../../core/models/drawer_item_model.dart';
import '../../../../core/utlis/app_assets.dart';
import 'drawer_item.dart';

class DrawerBottomSection extends StatelessWidget {
  const DrawerBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          const Spacer(),
          DrawerItem(
            isActive: false,
            drawerItemData: const DrawerItemModel(
              title: 'Settings',
              iconAsset: AppAssets.kImagesSetting,
            ),
            onTap: () {},
          ),
          DrawerItem(
            isActive: false,
            drawerItemData: const DrawerItemModel(
              title: 'Log Out',
              iconAsset: AppAssets.kImagesLogout,
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}