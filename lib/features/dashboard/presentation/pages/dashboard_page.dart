import 'package:admin_dashboard/core/utlis/app_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard_page_body.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kGrey1,
      body: DashboardPageBody(),
    );
  }
}