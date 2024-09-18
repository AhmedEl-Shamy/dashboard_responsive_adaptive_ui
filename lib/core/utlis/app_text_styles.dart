import 'package:admin_dashboard/core/utlis/app_colors.dart';
import 'package:flutter/material.dart';

import 'app_assets.dart';

abstract class AppTextStyles {
  // Font Size 12
  static const TextStyle kStyleRegular12 = TextStyle(
    fontSize: 12,
    color: AppColors.kGrey5,
    fontFamily: AppAssets.kMainFontFamily,
  );

  // Font Size 14
  static const TextStyle kStyleRegular14 = TextStyle(
    fontSize: 14,
    color: AppColors.kGrey5,
    fontFamily: AppAssets.kMainFontFamily,
  );

  // Font Size 16
  static const TextStyle kStyleRegular16 = TextStyle(
    fontSize: 16,
    color: AppColors.kBlue2,
    fontFamily: AppAssets.kMainFontFamily,
  );
  static const TextStyle kStyleMedium16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.kBlue2,
    fontFamily: AppAssets.kMainFontFamily,
  );
  static const TextStyle kStyleSemiBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.kBlue2,
    fontFamily: AppAssets.kMainFontFamily,
  );
  static const TextStyle kStyleBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.kBlue1,
    fontFamily: AppAssets.kMainFontFamily,
  );

  // Font Size 18
  static const TextStyle kStyleSemiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.kWhite,
    fontFamily: AppAssets.kMainFontFamily,
  );

  // Font Size 20
  static const TextStyle kStyleMedium20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.kWhite,
    fontFamily: AppAssets.kMainFontFamily,
  );
  static const TextStyle kStyleSemiBold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.kBlue2,
    fontFamily: AppAssets.kMainFontFamily,
  );

  // Font Size 24
  static const TextStyle kStyleSemiBold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.kBlue1,
    fontFamily: AppAssets.kMainFontFamily,
  );
}
