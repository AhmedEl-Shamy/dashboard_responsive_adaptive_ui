import 'package:admin_dashboard/features/dashboard/presentation/layouts/dashboard_desktop_layout.dart';
import 'package:admin_dashboard/features/dashboard/presentation/layouts/dashboard_tablet_layout.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/adaptive_layout_selector.dart';
import 'package:flutter/material.dart';

class DashboardPageBody extends StatelessWidget {
  const DashboardPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutSelector(
      desktopLayout: (context) => const DashboardDesktopLayout(),
      mobileLayout: (context) => const SizedBox(),
      tabletLayout: (context) => const DashboardTabletLayout(),
    );
  }
}
