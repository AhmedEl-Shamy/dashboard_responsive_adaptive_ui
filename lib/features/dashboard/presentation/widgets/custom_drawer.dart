import 'package:admin_dashboard/core/models/user_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/utlis/app_colors.dart';
import 'drawer_bottom_section.dart';
import 'drawer_sliver_list_items.dart';
import 'sliver_upper_image_widget.dart';
import 'user_info_widget.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: AppColors.kWhite,
      child: const CustomScrollView(
        slivers: [
          SliverUpperImageWidget(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: UserInfoWidget(
              user: UserModel(
                username: 'Ahmed El-Shamy',
                email: 'ahmedelshamy@gmail.com',
                avatar: AppAssets.kImagesAvatart1,
              ),
              avatarDimension: 32,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          DrawerItemsSliverList(),
          DrawerBottomSection(),
        ],
      ),
    );
  }
}
