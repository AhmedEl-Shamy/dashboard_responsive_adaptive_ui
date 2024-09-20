import 'package:admin_dashboard/core/utlis/app_constants.dart';
import 'package:flutter/material.dart';

import 'all_expenses_widget.dart';
import 'quick_invoice_widget.dart';

class DesktopMidSection extends StatelessWidget {
  const DesktopMidSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: AppConstants.kEndSpace,
        ),
        AllExpensesWidget(),
        SizedBox(
          height: AppConstants.kMainSpace,
        ),
        QuickInvoiceWidget(),
        SizedBox(
          height: AppConstants.kEndSpace,
        ),
      ],
    );
  }
}
