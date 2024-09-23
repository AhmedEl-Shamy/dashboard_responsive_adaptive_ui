import 'package:flutter/material.dart';

import '../../../../core/models/transaction_model.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import '../../../../core/utlis/app_text_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.kGrey3,
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0,
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppConstants.kMainBorderRadius,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Text(
            transactionModel.name,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        subtitle: Text(
          transactionModel.date,
        ),
        titleTextStyle: AppTextStyles.kStyleSemiBold16(context),
        subtitleTextStyle: AppTextStyles.kStyleMedium16(context).copyWith(
          color: AppColors.kGrey5,
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppTextStyles.kStyleSemiBold20(context).copyWith(
            color: transactionModel.transctionType == TransactionType.deposite
                ? AppColors.kGreen
                : AppColors.kRed,
          ),
        ),
      ),
    );
  }
}