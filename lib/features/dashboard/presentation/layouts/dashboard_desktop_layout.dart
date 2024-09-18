import 'package:admin_dashboard/core/utlis/app_constants.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';
import '../widgets/mid_section_widget.dart';
import '../widgets/right_side_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 3,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: AppConstants.kMainSpace,
        ),
        Expanded(
          flex: 6,
          child: MidSectionWidget(),
        ),
        SizedBox(
          width: AppConstants.kMainSpace,
        ),
        Expanded(
          flex: 4,
          child: RightSideSection(),
        ),
        SizedBox(
          width: AppConstants.kEndSpace,
        ),
      ],
    );
  }
}

