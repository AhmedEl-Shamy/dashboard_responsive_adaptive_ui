import 'package:flutter/material.dart';

import '../../../../core/utlis/app_text_styles.dart';
import 'time_filter_drop_down_button.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppTextStyles.kStyleSemiBold20,
        ),
        TimeFilterDropDownButton(),
      ],
    );
  }
}