import 'package:flutter/material.dart';

import '../../../../core/models/expenses_item_model.dart';
import '../../../../core/utlis/app_text_styles.dart';

class ExpensesItemInfoWidget extends StatelessWidget {
  const ExpensesItemInfoWidget({
    super.key,
    required this.expensesItemData,
    this.titleColor,
    this.dateColor,
  });

  final ExpensesItemModel expensesItemData;
  final Color? titleColor, dateColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            expensesItemData.title,
            style: AppTextStyles.kStyleSemiBold16(context).copyWith(
              color: titleColor,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            expensesItemData.date,
            style: AppTextStyles.kStyleRegular14(context).copyWith(
              color: dateColor,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            expensesItemData.price,
            style: AppTextStyles.kStyleSemiBold24(context).copyWith(
              color: titleColor,
            ),
          ),
        ),
      ],
    );
  }
}