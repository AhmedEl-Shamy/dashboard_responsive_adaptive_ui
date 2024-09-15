import 'package:admin_dashboard/core/utlis/app_colors.dart';
import 'package:admin_dashboard/core/utlis/app_constants.dart';
import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppConstants.kMainPadding),
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(AppConstants.kMainBorderRadius)
      ),
      child: child,
    );
  }
}