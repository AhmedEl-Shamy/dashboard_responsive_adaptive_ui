import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/utlis/app_colors.dart';

class SliverUpperImageWidget extends StatelessWidget {
  const SliverUpperImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        color: AppColors.kGrey4,
        child: SvgPicture.asset(
          AppAssets.kImagesImageIcon,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}