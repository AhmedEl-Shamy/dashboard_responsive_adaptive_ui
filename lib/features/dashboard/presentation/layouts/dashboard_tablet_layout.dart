import 'package:admin_dashboard/core/utlis/app_constants.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/tablet_mobile_mid_section.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: AppConstants.kMainSpace,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: TabletMobileMidSection(),
          ),
        ),
        SizedBox(
          width: AppConstants.kMainSpace,
        ),
      ],
    );
  }
}
