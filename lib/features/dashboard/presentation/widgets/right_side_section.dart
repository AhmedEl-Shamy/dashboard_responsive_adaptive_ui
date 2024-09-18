import 'package:admin_dashboard/core/utlis/app_constants.dart';
import 'package:flutter/material.dart';

import 'income_section.dart';
import 'my_card_section.dart';

class RightSideSection extends StatelessWidget {
  const RightSideSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: AppConstants.kEndSpace,
          ),
          MyCardAndTransactionsSection(
            controller: PageController(),
          ),
          const SizedBox(
            height: AppConstants.kMainSpace,
          ),
          const IncomeSection(),
          const SizedBox(
            height: AppConstants.kEndSpace,
          ),
        ],
      ),
    );
  }
}
