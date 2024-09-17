import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import 'my_card_slider.dart';

class MyCardView extends StatefulWidget {
  const MyCardView({super.key, required this.controller});
  final PageController controller;

  @override
  State<MyCardView> createState() => _MyCardViewState();
}

class _MyCardViewState extends State<MyCardView> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: MouseRegion(
        onEnter: _onEnter,
        onExit: _onExit,
        child: Stack(
          children: [
            MyCardSlider(controller: widget.controller),
            MyCardViewControllers(
              controller: widget.controller,
              isVisible: isVisible,
            ),
          ],
        ),
      ),
    );
  }

  void _onEnter(PointerEnterEvent event) {
    setState(() {
      isVisible = true;
    });
  }

  void _onExit(PointerExitEvent event) {
    setState(() {
      isVisible = false;
    });
  }
}

class MyCardViewControllers extends StatelessWidget {
  const MyCardViewControllers({
    super.key,
    required this.controller,
    required this.isVisible,
  });
  final bool isVisible;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildButton(
              controller: controller,
              onPressed: () {
                controller.previousPage(
                  duration: AppConstants.kMainAnimationDuration,
                  curve: Curves.linear,
                );
              },
              child: const Icon(
                Icons.arrow_back_ios_rounded,
              ),
            ),
            _buildButton(
              controller: controller,
              onPressed: () {
                controller.nextPage(
                  duration: AppConstants.kMainAnimationDuration,
                  curve: Curves.linear,
                );
              },
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconButton _buildButton({
    required PageController controller,
    required void Function() onPressed,
    required Widget child,
  }) =>
      IconButton(
        onPressed: onPressed,
        icon: child,
        style: IconButton.styleFrom(
          backgroundColor: Colors.black.withOpacity(0.25),
          foregroundColor: AppColors.kWhite,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
            AppConstants.kMainBorderRadius,
          )),
        ),
      );
}