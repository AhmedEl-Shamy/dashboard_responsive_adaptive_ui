import 'package:admin_dashboard/core/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({
    super.key,
    required this.user,
    this.avatarDimension,
  });
  final UserModel user;
  final double? avatarDimension;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: AppColors.kGrey3,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: ListTile(
        onTap: () {},
        leading: SvgPicture.asset(
          user.avatar,
          width: avatarDimension,
          height: avatarDimension,
        ),
        title: Text(
          user.username,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          user.email,
          overflow: TextOverflow.ellipsis,
        ),
        titleTextStyle: AppTextStyles.kStyleSemiBold16,
        subtitleTextStyle: AppTextStyles.kStyleRegular12,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
      ),
    );
  }
}
