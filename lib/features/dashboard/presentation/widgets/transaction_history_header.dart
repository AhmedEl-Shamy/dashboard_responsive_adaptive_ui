import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transactions History',
          style: AppTextStyles.kStyleSemiBold20(context),
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            child: Text(
              'See all',
              style: AppTextStyles.kStyleMedium16(context).copyWith(
                color: AppColors.kBlue1,
              ),
            ),
            onTap: () {},
          ),
        )
      ],
    );
  }
}