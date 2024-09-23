import 'package:admin_dashboard/core/utlis/app_colors.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

import '../../../../core/utlis/app_text_styles.dart';
import 'custom_dot_indicator.dart';
import 'my_card_view.dart';
import 'transaction_history.dart';

class MyCardAndTransactionsSection extends StatelessWidget {
  const MyCardAndTransactionsSection({
    super.key,
    required this.controller,
  });
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Card',
            style: AppTextStyles.kStyleSemiBold20(context),
          ),
          const SizedBox(
            height: 20,
          ),
          MyCardView(controller: controller),
          const SizedBox(
            height: 20,
          ),
          DotIndicators(controller: controller),
          const Divider(
            height: 40,
            color: AppColors.kGrey1,
          ),
          const TransactionHistory(),
        ],
      ),
    );
  }
}