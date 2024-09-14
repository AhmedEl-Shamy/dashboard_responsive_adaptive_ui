import 'package:flutter/material.dart';

import '../../../../core/models/drawer_item_model.dart';
import '../../../../core/utlis/app_assets.dart';
import 'drawer_item.dart';

class DrawerItemsSliverList extends StatefulWidget {
  const DrawerItemsSliverList({super.key});
  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
      title: 'Dashboard',
      iconAsset: AppAssets.kImagesDashboard,
    ),
    DrawerItemModel(
      title: 'My Transactions',
      iconAsset: AppAssets.kImagesMyTransaction,
    ),
    DrawerItemModel(
      title: 'Statistics',
      iconAsset: AppAssets.kImagesStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      iconAsset: AppAssets.kImagesWalletAccount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      iconAsset: AppAssets.kImagesMyInvestments,
    ),
  ];
  @override
  State<DrawerItemsSliverList> createState() => _DrawerItemsSliverListState();
}

class _DrawerItemsSliverListState extends State<DrawerItemsSliverList> {
  int isActiveIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: DrawerItemsSliverList.drawerItems.length,
      itemBuilder: (context, index) => DrawerItem(
        isActive: isActiveIndex == index,
        drawerItemData: DrawerItemsSliverList.drawerItems[index],
        onTap: () {
          if (index != isActiveIndex) {
            setState(() {
              isActiveIndex = index;
            });
          }
        },
      ),
    );
  }
}