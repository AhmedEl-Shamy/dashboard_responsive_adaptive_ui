import 'package:admin_dashboard/core/utlis/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {

  // Font Size 12
  static const TextStyle kStyleRegular12 = TextStyle(
    fontSize: 12,
    color: AppColors.kGrey4,
  );

  // Font Size 14
  static const TextStyle kStyleRegular14 = TextStyle(
    fontSize: 14,
    color: AppColors.kGrey4,
  );

  // Font Size 16
  static const TextStyle kStyleRegular16 = TextStyle(
    fontSize: 16,
    color: AppColors.kBlue2,
  );
  static const TextStyle kStyleMedium16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.kBlue2,
  );
  static const TextStyle kStyleSemiBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.kBlue2,
  );
  static const TextStyle kStyleBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.kBlue1,
  );
  
  // Font Size 18
  static const TextStyle kStyleSemiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.kWhite,
  );

  // Font Size 20
  static const TextStyle kStyleMedium20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.kWhite,
  );
  static const TextStyle kStyleSemiBold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.kBlue2,
  );

  // Font Size 24
  static const TextStyle kStyleSemiBold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.kBlue1,
  );


}