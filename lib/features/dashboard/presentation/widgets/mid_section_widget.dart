import 'package:flutter/material.dart';

import 'all_expenses_widget.dart';

class MidSectionWidget extends StatelessWidget {
  const MidSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensesWidget(),
      ],
    );
  }
}