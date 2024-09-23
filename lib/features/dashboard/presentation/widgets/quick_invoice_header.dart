import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppTextStyles.kStyleSemiBold20(context),
        ),

        SizedBox.square(
          dimension: 60,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
            style: IconButton.styleFrom(
              foregroundColor: AppColors.kBlue1,
              backgroundColor: AppColors.kGrey3,
            ),
          ),
        )
      ],
    );
  }
}