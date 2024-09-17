import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';

class DotIndicators extends StatefulWidget {
  const DotIndicators({
    super.key,
    required this.controller,
  });
  final PageController controller;
  @override
  State<DotIndicators> createState() => _DotIndicatorsState();
}

class _DotIndicatorsState extends State<DotIndicators> {
  int activePage = 0;

  @override
  void initState() {
    _addListener();
    super.initState();
  }

  void _addListener() {
    widget.controller.addListener(
      () {
        setState(() {
          activePage = widget.controller.page!.round();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => AnimatedContainer(
          width: activePage == index ? 32 : 8,
          height: 8,
          margin: const EdgeInsets.only(right: 10),
          duration: AppConstants.kMainAnimationDuration,
          decoration: BoxDecoration(
            color: activePage == index ? AppColors.kBlue1 : AppColors.kGrey6,
            borderRadius: BorderRadius.circular(
              AppConstants.kMainBorderRadius,
            ),
          ),
        ),
      ),
    );
  }
}