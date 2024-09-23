import 'package:flutter/material.dart';

import '../../../../core/models/expenses_item_model.dart';
import '../../../../core/utlis/app_assets.dart';
import 'expenses_item_widget.dart';

class AllExpensesItemsList extends StatefulWidget {
  const AllExpensesItemsList({
    super.key,
  });

  @override
  State<AllExpensesItemsList> createState() => _AllExpensesItemsListState();
}

class _AllExpensesItemsListState extends State<AllExpensesItemsList> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ExpensesItemWidget(
            onTap: () =>  _onTab(0),
            isActivated: selectedItem == 0,
            expensesItemData: ExpensesItemModel(
              date: 'April 2022',
              title: 'Balance',
              price: '\$124.22',
              iconAsset: AppAssets.kImagesBalance,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: ExpensesItemWidget(
            onTap: () =>  _onTab(1),
            isActivated: selectedItem == 1,
            expensesItemData: ExpensesItemModel(
              date: 'April 2022',
              title: 'Income',
              price: '\$124.22',
              iconAsset: AppAssets.kImagesIncome,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: ExpensesItemWidget(
            onTap: () => _onTab(2),
            isActivated: selectedItem == 2,
            expensesItemData: ExpensesItemModel(
              date: 'April 2022',
              title: 'Expenses',
              price: '\$124.22',
              iconAsset: AppAssets.kImagesExpenses,
            ),
          ),
        ),
      ],
    );
  }

  void _onTab(int value) {
    if (selectedItem != value) {
      setState(() {
        selectedItem = value;
      });
    }
  }
}