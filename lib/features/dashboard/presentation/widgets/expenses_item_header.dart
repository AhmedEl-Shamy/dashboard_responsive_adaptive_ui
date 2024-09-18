import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/models/expenses_item_model.dart';
import '../../../../core/utlis/app_colors.dart';

class ExpensesItemHeader extends StatelessWidget {
  const ExpensesItemHeader({
    super.key,
    required this.expensesItemData,
    this.imageBGColor,
    this.imageColor,
  });

  final ExpensesItemModel expensesItemData;
  final Color? imageBGColor, imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: imageBGColor ?? AppColors.kGrey3,
          child: SvgPicture.asset(
            expensesItemData.iconAsset,
            colorFilter: ColorFilter.mode(
              imageColor ?? AppColors.kBlue1,
              BlendMode.srcIn,
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: imageColor ?? AppColors.kBlue3,
        )
      ],
    );
  }
}