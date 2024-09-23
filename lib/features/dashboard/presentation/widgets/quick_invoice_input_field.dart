import 'package:flutter/material.dart';

import '../../../../core/utlis/app_text_styles.dart';
import 'custom_text_field.dart';

class QuickInvoiceInputField extends StatelessWidget {
  const QuickInvoiceInputField({
    super.key,
    this.textFieldLeading,
    required this.title,
    required this.hint,
    required this.inputType,
  });
  final Widget? textFieldLeading;
  final String title, hint;
  final TextInputType inputType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.kStyleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: hint,
          inputType: inputType,
          leading: textFieldLeading,
        )
      ],
    );
  }
}