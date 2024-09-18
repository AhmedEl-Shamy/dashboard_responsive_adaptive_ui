import 'package:flutter/material.dart';

import '../../../../core/models/chart_item_model.dart';
import '../../../../core/utlis/app_colors.dart';
import 'custom_background_container.dart';
import 'income_chart.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IcomeSectionHeader(),
          SizedBox(
            height: 16,
          ),
          IncomeChart(
            items: <ChartItemModel>[
              ChartItemModel(
                name: 'Design Service',
                percentage: 40,
                color: AppColors.kBlue2,
              ),
              ChartItemModel(
                name: 'Design product',
                percentage: 25,
                color: AppColors.kBlue1,
              ),
              ChartItemModel(
                name: 'Product royalti',
                percentage: 20,
                color: AppColors.kBlue3,
              ),
              ChartItemModel(
                name: 'Other',
                percentage: 22,
                color: Color(0xFFE2DECD),
              ),
            ],
          ),
        ],
      ),
    );
  }
}