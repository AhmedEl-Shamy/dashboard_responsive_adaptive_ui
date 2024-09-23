import 'package:admin_dashboard/core/utlis/size_config.dart';
import 'package:flutter/material.dart';

import '../../../../core/models/expenses_item_model.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import 'expenses_info_widet.dart';
import 'expenses_item_header.dart';

class ExpensesItemWidget extends StatelessWidget {
  const ExpensesItemWidget({
    super.key,
    required this.expensesItemData,
    required this.isActivated,
    required this.onTap,
  });
  final ExpensesItemModel expensesItemData;
  final void Function() onTap;
  final bool isActivated;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedCrossFade(
        firstChild: NormalExpensesItem(expensesItemData: expensesItemData),
        secondChild: ActivatedExpensesItem(expensesItemData: expensesItemData),
        crossFadeState: (isActivated)
            ? CrossFadeState.showSecond
            : CrossFadeState.showFirst,
        duration: AppConstants.kMainAnimationDuration,
      ),
    );
  }
}

class NormalExpensesItem extends StatelessWidget {
  const NormalExpensesItem({
    super.key,
    required this.expensesItemData,
  });
  final ExpensesItemModel expensesItemData;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        padding: EdgeInsets.all(
          AppConstants.kMainPadding * SizeConfig.getScalingFactor(context),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConstants.kMainBorderRadius),
          border: Border.all(
            width: 1,
            color: AppColors.kGrey1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ExpensesItemHeader(
              expensesItemData: expensesItemData,
            ),
            const SizedBox(
              height: 35,
            ),
            ExpensesItemInfoWidget(
              expensesItemData: expensesItemData,
            )
          ],
        ),
      ),
    );
  }
}

class ActivatedExpensesItem extends StatelessWidget {
  const ActivatedExpensesItem({
    super.key,
    required this.expensesItemData,
  });
  final ExpensesItemModel expensesItemData;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        padding: EdgeInsets.all(
          AppConstants.kMainPadding * SizeConfig.getScalingFactor(context),
        ),
        decoration: BoxDecoration(
          color: AppColors.kBlue1,
          borderRadius: BorderRadius.circular(
            AppConstants.kMainBorderRadius,
          ),
          border: Border.all(
            width: 1,
            color: Colors.transparent,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ExpensesItemHeader(
              expensesItemData: expensesItemData,
              imageBGColor: AppColors.kWhite.withOpacity(0.1),
              imageColor: AppColors.kWhite,
            ),
            const SizedBox(
              height: 35,
            ),
            ExpensesItemInfoWidget(
              expensesItemData: expensesItemData,
              titleColor: AppColors.kWhite,
              dateColor: AppColors.kGrey3,
            ),
          ],
        ),
      ),
    );
  }
}
