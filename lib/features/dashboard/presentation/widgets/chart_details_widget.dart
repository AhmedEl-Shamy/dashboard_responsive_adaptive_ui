import 'package:flutter/material.dart';

import '../../../../core/models/chart_item_model.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import '../../../../core/utlis/app_text_styles.dart';

class ChartDetails extends StatelessWidget {
  const ChartDetails({super.key, required this.items});
  final List<ChartItemModel> items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) => Padding(
        padding: (index != items.length - 1)
            ? const EdgeInsets.only(bottom: 12)
            : EdgeInsets.zero,
        child: Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: items[index].color,
                borderRadius: BorderRadius.circular(
                  AppConstants.kMainBorderRadius,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              items[index].name,
              style: AppTextStyles.kStyleRegular16,
            ),
            const Spacer(),
            Text(
              items[index].percentage.toString(),
              style: AppTextStyles.kStyleMedium16.copyWith(
                color: AppColors.kBlue2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}