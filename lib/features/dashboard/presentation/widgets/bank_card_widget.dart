import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/models/bank_card_model.dart';
import '../../../../core/utlis/app_assets.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import '../../../../core/utlis/app_text_styles.dart';

class BankCardWidget extends StatelessWidget {
  const BankCardWidget({
    super.key,
    required this.cardData,
  });
  final BankCardModel cardData;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.all(AppConstants.kMainPadding),
        decoration: BoxDecoration(
            color: AppColors.kBlue1,
            image: const DecorationImage(
              image: AssetImage(
                AppAssets.kImagesCardBgPattern,
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(
              AppConstants.kMainBorderRadius,
            )),
        child: CardInfo(cardData: cardData),
      ),
    );
  }
}

class CardInfo extends StatelessWidget {
  const CardInfo({
    super.key,
    required this.cardData,
  });

  final BankCardModel cardData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name Card',
                  style: AppTextStyles.kStyleRegular16.copyWith(
                    color: AppColors.kWhite,
                  ),
                  
                ),
                Text(
                  cardData.cardName,
                  style: AppTextStyles.kStyleMedium20,
                  
                ),
              ],
            ),
            SvgPicture.asset(
              AppAssets.kImagesImageIcon,
              fit: BoxFit.scaleDown,
            ),
          ],
        ),
        const Spacer(),
        Text(
          cardData.cardNumber,
          style: AppTextStyles.kStyleSemiBold24.copyWith(
            color: AppColors.kWhite,
          ),
        ),
        Text(
          '${cardData.expirationDate} - ${cardData.securityCode}',
          style: AppTextStyles.kStyleRegular16.copyWith(
            color: AppColors.kWhite,
          ),
          
        )
      ],
    );
  }
}