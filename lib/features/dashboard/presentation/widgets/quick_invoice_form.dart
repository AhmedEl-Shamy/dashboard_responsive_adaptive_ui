import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import 'custom_button.dart';
import 'quick_invoice_input_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: QuickInvoiceInputField(
                title: 'Customer Name',
                hint: 'Type customer name',
                inputType: TextInputType.name,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: QuickInvoiceInputField(
                title: 'Customer Email',
                hint: 'Type customer email',
                inputType: TextInputType.emailAddress,
              ),
            )
          ],
        ),
        SizedBox(
          height: AppConstants.kMainSpace,
        ),
        Row(
          children: [
            Expanded(
              child: QuickInvoiceInputField(
                title: 'Item Name',
                hint: 'Type item name',
                inputType: TextInputType.name,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: QuickInvoiceInputField(
                title: 'Item Amount',
                hint: '',
                textFieldLeading: null,
                inputType: TextInputType.number,
              ),
            ),
          ],
        ),
        SizedBox(
          height: AppConstants.kMainSpace,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                bgColor: AppColors.kWhite,
                textColor: AppColors.kBlue1,
              ),
            ),
            SizedBox(
              width: AppConstants.kMainSpace,
            ),
            Expanded(
              child: CustomButton(
                text: 'Send money',
              ),
            ),
          ],
        )
      ],
    );
  }
}