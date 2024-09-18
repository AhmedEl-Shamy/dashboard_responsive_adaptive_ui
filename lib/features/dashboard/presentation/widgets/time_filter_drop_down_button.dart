import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import '../../../../core/utlis/app_text_styles.dart';

class TimeFilterDropDownButton extends StatefulWidget {
  const TimeFilterDropDownButton({
    super.key,
  });
  static const List<String> options = ['Daily', 'Monthly', 'Yearly'];
  @override
  State<TimeFilterDropDownButton> createState() =>
      _TimeFilterDropDownButtonState();
}

class _TimeFilterDropDownButtonState extends State<TimeFilterDropDownButton> {
  String currentValue = TimeFilterDropDownButton.options[1];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 135,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: AppColors.kGrey1,
        ),
        borderRadius: BorderRadius.circular(
          AppConstants.kMainBorderRadius,
        ),
      ),
      child: DropdownButton(
        underline: const SizedBox(),
        isExpanded: true,
        value: currentValue,
        icon: Transform.rotate(
          angle: pi * (-90 / 180),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        iconEnabledColor: AppColors.kBlue3,
        onChanged: (value) {
          setState(() {
            currentValue = value ?? TimeFilterDropDownButton.options[1];
          });
        },
        items: TimeFilterDropDownButton.options
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  style: AppTextStyles.kStyleMedium16,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}