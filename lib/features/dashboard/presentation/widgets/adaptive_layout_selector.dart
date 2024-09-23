import 'package:admin_dashboard/core/utlis/size_config.dart';
import 'package:flutter/material.dart';

class AdaptiveLayoutSelector extends StatelessWidget {
  const AdaptiveLayoutSelector({
    super.key,
    required this.desktopLayout,
    required this.mobileLayout,
    required this.tabletLayout,
  });
  final WidgetBuilder desktopLayout;
  final WidgetBuilder mobileLayout;
  final WidgetBuilder tabletLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        switch(SizeConfig.getLayoutType(context)){
          case DeviceLayoutType.mobile:
            return mobileLayout(context);
          case DeviceLayoutType.tablet:
            return tabletLayout(context);
          case DeviceLayoutType.desktop:
            return desktopLayout(context);
        }
      },
    );
  }
}
