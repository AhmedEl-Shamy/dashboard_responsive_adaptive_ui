import 'package:flutter/material.dart';

import 'all_expenses_header.dart';
import 'custom_background_container.dart';
import 'all_expenses_items_list.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 20,
          ),
          AllExpensesItemsList(),
        ],
      ),
    );
  }
}








