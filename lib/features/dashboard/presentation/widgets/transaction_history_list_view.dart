import 'package:flutter/material.dart';

import '../../../../core/models/transaction_model.dart';
import 'transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionModel> transctionHistory = [
    TransactionModel(
      name: 'Cash Withdrawal',
      amount: r'$20,129',
      date: '13 April 2022',
      transctionType: TransactionType.withdraw,
    ),
    TransactionModel(
      name: 'Landing Page project',
      amount: r'$2,000',
      date: '13 Apr, 2022 at 3:30 PM',
      transctionType: TransactionType.deposite,
    ),
    TransactionModel(
      name: 'Juni Mobile App project',
      amount: r'$20.129',
      date: '13 Apr, 2022 at 3:30 PM',
      transctionType: TransactionType.deposite,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: transctionHistory.length,
      itemBuilder: (context, index) => TransactionHistoryItem(
        transactionModel: transctionHistory[index],
      ),
    );
  }
}