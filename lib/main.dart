import 'package:admin_dashboard/core/utlis/app_assets.dart';
import 'package:admin_dashboard/core/utlis/app_colors.dart';
import 'package:admin_dashboard/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(const AdminDashboard());
}

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: AppAssets.kMainFontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.kBlue1),
      ),
      home: const DashboardPage(),
    );
  }
}