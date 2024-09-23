import 'package:admin_dashboard/core/utlis/app_colors.dart';
import 'package:admin_dashboard/core/utlis/size_config.dart';
import 'package:flutter/material.dart';

import 'app_assets.dart';

abstract class AppTextStyles {
  // Font Size 12
  static TextStyle kStyleRegular12(BuildContext context) => TextStyle(
        fontSize: 12 * SizeConfig.getScalingFactor(context),
        color: AppColors.kGrey5,
        fontFamily: AppAssets.kMainFontFamily,
      );

  // Font Size 14
  static TextStyle kStyleRegular14(BuildContext context) => TextStyle(
        fontSize: 14 * SizeConfig.getScalingFactor(context),
        color: AppColors.kGrey5,
        fontFamily: AppAssets.kMainFontFamily,
      );

  // Font Size 16
  static TextStyle kStyleRegular16(BuildContext context) => TextStyle(
        fontSize: 16 * SizeConfig.getScalingFactor(context),
        color: AppColors.kBlue3,
        fontFamily: AppAssets.kMainFontFamily,
      );
  static TextStyle kStyleMedium16(BuildContext context) => TextStyle(
        fontSize: 16 * SizeConfig.getScalingFactor(context),
        fontWeight: FontWeight.w500,
        color: AppColors.kBlue3,
        fontFamily: AppAssets.kMainFontFamily,
      );
  static TextStyle kStyleSemiBold16(BuildContext context) => TextStyle(
        fontSize: 16 * SizeConfig.getScalingFactor(context),
        fontWeight: FontWeight.w600,
        color: AppColors.kBlue3,
        fontFamily: AppAssets.kMainFontFamily,
      );
  static TextStyle kStyleBold16(BuildContext context) => TextStyle(
        fontSize: 16 * SizeConfig.getScalingFactor(context),
        fontWeight: FontWeight.bold,
        color: AppColors.kBlue1,
        fontFamily: AppAssets.kMainFontFamily,
      );

  // Font Size 18
  static TextStyle kStyleSemiBold18(BuildContext context) => TextStyle(
        fontSize: 18 * SizeConfig.getScalingFactor(context),
        fontWeight: FontWeight.w600,
        color: AppColors.kWhite,
        fontFamily: AppAssets.kMainFontFamily,
      );

  // Font Size 20
  static TextStyle kStyleMedium20(BuildContext context) => TextStyle(
        fontSize: 20 * SizeConfig.getScalingFactor(context),
        fontWeight: FontWeight.w500,
        color: AppColors.kWhite,
        fontFamily: AppAssets.kMainFontFamily,
      );
  static TextStyle kStyleSemiBold20(BuildContext context) => TextStyle(
        fontSize: 20 * SizeConfig.getScalingFactor(context),
        fontWeight: FontWeight.w600,
        color: AppColors.kBlue3,
        fontFamily: AppAssets.kMainFontFamily,
      );

  // Font Size 24
  static TextStyle kStyleSemiBold24(BuildContext context) => TextStyle(
        fontSize: 24 * SizeConfig.getScalingFactor(context),
        fontWeight: FontWeight.w600,
        color: AppColors.kBlue1,
        fontFamily: AppAssets.kMainFontFamily,
      );
}
