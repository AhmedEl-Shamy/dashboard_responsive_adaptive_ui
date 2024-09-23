import 'package:flutter/material.dart';

import '../../../../core/models/chart_item_model.dart';
import '../../../../core/utlis/app_constants.dart';
import 'chart_details_widget.dart';
import 'chart_widget.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key, required this.items});
  final List<ChartItemModel> items;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 325) {
          return Row(
            children: [
              Expanded(
                child: ChartWidget(
                  items: items,
                ),
              ),
              const SizedBox(
                width: AppConstants.kEndSpace,
              ),
              Expanded(
                flex: 2,
                child: ChartDetails(
                  items: items,
                ),
              ),
            ],
          );
        } else {
          return Column(
            children: [
              ChartWidget(items: items),
              const SizedBox(
                height: 16,
              ),
              ChartDetails(items: items),
            ],
          );
        }
      },
    );
  }
}
