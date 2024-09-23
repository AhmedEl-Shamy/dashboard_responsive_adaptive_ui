import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/models/drawer_item_model.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.isActive,
    required this.drawerItemData,
    required this.onTap,
  });
  final bool isActive;
  final DrawerItemModel drawerItemData;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ListTile(
        onTap: onTap,
        leading: SvgPicture.asset(
          drawerItemData.iconAsset,
        ),
        contentPadding: const EdgeInsets.all(5),
        title: AnimatedDefaultTextStyle(
          style: (isActive)
              ? AppTextStyles.kStyleBold16(context)
              : AppTextStyles.kStyleRegular16(context),
          duration: const Duration(milliseconds: 250),
          child: Text(drawerItemData.title),
        ),
        shape: (isActive)
            ? const BorderDirectional(
                end: BorderSide(
                  width: 4,
                  color: AppColors.kBlue1,
                ),
              )
            : null,
      ),
    );
  }
}