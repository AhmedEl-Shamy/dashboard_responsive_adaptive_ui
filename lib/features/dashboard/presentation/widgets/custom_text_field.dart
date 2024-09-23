import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import '../../../../core/utlis/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.leading,
    required this.hint,
    required this.inputType,
  });
  final Widget? leading;
  final String hint;
  final TextInputType inputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      style: AppTextStyles.kStyleRegular16(context),
      decoration: InputDecoration(
        hintText: hint,
        prefix: leading,
        hintStyle: AppTextStyles.kStyleRegular16(context).copyWith(
          color: AppColors.kGrey5,
        ),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        fillColor: AppColors.kGrey3,
        filled: true,
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        AppConstants.kMainBorderRadius,
      ),
      borderSide: BorderSide.none,
    );
  }
}
