import 'package:flutter/material.dart';

import '../../../../core/models/bank_card_model.dart';
import 'bank_card_widget.dart';

class MyCardSlider extends StatelessWidget {
  const MyCardSlider({
    super.key,
    required this.controller,
  });
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: PageView(
        pageSnapping: true,
        padEnds: false,
        controller: controller,
        children: List.generate(
          3,
          (index) => const Padding(
            padding: EdgeInsets.all(1),
            child: BankCardWidget(
              cardData: BankCardModel(
                cardName: 'Syah Bandi',
                cardNumber: '0918 8124 0042 8129',
                securityCode: '123',
                expirationDate: '06/26',
              ),
            ),
          ),
        ),
      ),
    );
  }
}