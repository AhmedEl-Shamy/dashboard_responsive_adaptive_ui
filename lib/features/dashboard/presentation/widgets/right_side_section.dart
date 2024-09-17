import 'package:flutter/material.dart';

import 'custom_background_container.dart';
import 'my_card_section.dart';

class RightSideSection extends StatelessWidget {
  const RightSideSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(
            controller: PageController(),
          )
        ],
      ),
    );
  }
}






