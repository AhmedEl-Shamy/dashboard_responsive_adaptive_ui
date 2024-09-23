import 'package:admin_dashboard/core/utlis/app_colors.dart';
import 'package:admin_dashboard/core/utlis/app_text_styles.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard_page_body.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (MediaQuery.sizeOf(context).width < 800)
          ? AppBar(
              leading: const DrawerButton(
                color: AppColors.kBlue1,
              ),
              backgroundColor: AppColors.kWhite,
              title: const Text('Admin Dashboard'),
              titleTextStyle: AppTextStyles.kStyleSemiBold20(context),
            )
          : null,
      drawer: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.7,
        child: const CustomDrawer(),
      ),
      backgroundColor: AppColors.kGrey2,
      body: const DashboardPageBody(),
    );
  }
}
