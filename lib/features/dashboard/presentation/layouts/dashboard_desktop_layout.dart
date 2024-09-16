import 'package:admin_dashboard/core/utlis/app_constants.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';
import '../widgets/mid_section_widget.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: AppConstants.kMainSpace,
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 35,
            ),
            child: MidSectionWidget(),
          ),
        ),
        SizedBox(
          width: AppConstants.kMainSpace,
        ),
        Expanded(
          child: Placeholder(),
        )
      ],
    );
  }
}
