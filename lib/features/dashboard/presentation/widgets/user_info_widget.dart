import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({
    super.key,
    required this.username,
    required this.email,
  });
  final String username, email;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: AppColors.kGrey2,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: ListTile(
        onTap: () {},
        leading: SvgPicture.asset(
          AppAssets.kImagesAvatart1,
        ),
        title: Text(
          username,
        ),
        subtitle: Text(
          email,
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