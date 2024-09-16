import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import '../../../../core/utlis/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.bgColor,
    this.textColor,
    required this.text,
  });
  final Color? bgColor, textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: FilledButton(
        onPressed: () {},
        style: FilledButton.styleFrom(
          foregroundColor: textColor ?? AppColors.kWhite,
          backgroundColor: bgColor ?? AppColors.kBlue1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppConstants.kMainBorderRadius,
            ),
          ),
          textStyle: AppTextStyles.kStyleSemiBold18,
        ),
        child: Text(
          text,
        ),
      ),
    );
  }
}
