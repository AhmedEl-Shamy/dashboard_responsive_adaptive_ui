import 'package:admin_dashboard/core/utlis/app_constants.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/tablet_mobile_mid_section.dart';
import 'package:flutter/material.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.kMainSpace,
      ),
      child: SingleChildScrollView(
        child: TabletMobileMidSection(),
      ),
    );
  }
}
