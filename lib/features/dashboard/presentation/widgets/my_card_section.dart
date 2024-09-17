import 'package:flutter/material.dart';

import '../../../../core/utlis/app_text_styles.dart';
import 'custom_dot_indicator.dart';
import 'my_card_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({
    super.key,
    required this.controller,
  });
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My Card',
          style: AppTextStyles.kStyleSemiBold20,
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardView(controller: controller),
        const SizedBox(
          height: 20,
        ),
        DotIndicators(controller: controller),
      ],
    );
  }
}