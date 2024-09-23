import 'package:flutter/material.dart';

import '../../../../core/utlis/app_text_styles.dart';
import 'time_filter_drop_down_button.dart';

class IcomeSectionHeader extends StatelessWidget {
  const IcomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppTextStyles.kStyleSemiBold20(context),
        ),
        const TimeFilterDropDownButton(),
      ],
    );
  }
}