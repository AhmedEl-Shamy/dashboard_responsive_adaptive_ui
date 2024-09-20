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
        if (constraints.maxWidth < 900) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 1200) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
