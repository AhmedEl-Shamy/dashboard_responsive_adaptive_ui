import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import 'custom_background_container.dart';
import 'latest_transactions.dart';
import 'quick_invoice_form.dart';
import 'quick_invoice_header.dart';

class QuickInvoiceWidget extends StatelessWidget {
const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: AppConstants.kMainSpace,
          ),
          LatestTransactions(),
          Divider(
            height: 48,
            color: AppColors.kGrey1,
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}