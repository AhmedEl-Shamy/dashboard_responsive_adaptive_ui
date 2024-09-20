import 'package:admin_dashboard/core/utlis/app_constants.dart';
import 'package:flutter/material.dart';

import 'all_expenses_widget.dart';
import 'income_section.dart';
import 'my_card_section.dart';
import 'quick_invoice_widget.dart';

class TabletMobileMidSection extends StatelessWidget {
  const TabletMobileMidSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: AppConstants.kEndSpace,
        ),
        const AllExpensesWidget(),
        const SizedBox(
          height: AppConstants.kMainSpace,
        ),
        const QuickInvoiceWidget(),
        const SizedBox(
          height: AppConstants.kMainSpace,
        ),
        MyCardAndTransactionsSection(
          controller: PageController(),
        ),
        const SizedBox(
          height: AppConstants.kMainSpace,
        ),
        const IncomeSection(),
        const SizedBox(
          height: AppConstants.kEndSpace,
        ),
      ],
    );
  }
}
