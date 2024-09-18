import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/models/chart_item_model.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget({super.key, required this.items});
  final List<ChartItemModel> items;

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  int selectedSection = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: AspectRatio(
        aspectRatio: 1,      
        child: PieChart(
          _getData(),
        ),
      ),
    );
  }

  PieChartData _getData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        touchCallback: (event, response) {
          setState(() {
            selectedSection =
                response?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sections: List.generate(
        widget.items.length,
        (index) => PieChartSectionData(
          showTitle: selectedSection == index,
          titleStyle: AppTextStyles.kStyleSemiBold18.copyWith(
            color: AppColors.kWhite,
          ),
          radius: selectedSection == index ? 30 : 25,
          value: widget.items[index].percentage,
          color: widget.items[index].color,
        ),
      ),
    );
  }
}
