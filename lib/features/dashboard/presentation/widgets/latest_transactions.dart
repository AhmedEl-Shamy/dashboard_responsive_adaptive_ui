import 'package:flutter/material.dart';

import '../../../../core/utlis/app_text_styles.dart';
import 'latest_transactions_list_view.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transactions',
          style: AppTextStyles.kStyleMedium16,
        ),
        SizedBox(
          height: 12,
        ),
        LatestTransactionsListView(),
      ],
    );
  }
}
