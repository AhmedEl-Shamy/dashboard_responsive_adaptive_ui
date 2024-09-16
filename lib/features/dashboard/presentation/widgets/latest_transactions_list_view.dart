import 'package:flutter/material.dart';

import '../../../../core/models/user_model.dart';
import '../../../../core/utlis/app_assets.dart';
import 'user_info_widget.dart';

class LatestTransactionsListView extends StatelessWidget {
  const LatestTransactionsListView({
    super.key,
  });

  static const List<UserModel> users = [
    UserModel(
      avatar: AppAssets.kImagesAvatart1,
      username: 'Madrani Andi',
      email: 'madraniadi20@gmail',
    ),
    UserModel(
      avatar: AppAssets.kImagesAvatart1,
      username: 'Josua Nunito',
      email: 'josh_nunito@gmail.com',
    ),
    UserModel(
      avatar: AppAssets.kImagesAvatart2,
      username: 'Madrani Nunito',
      email: 'madrani_nunito@gmail.com',
    ),
    UserModel(
      avatar: AppAssets.kImagesAvatart1,
      username: 'Madrani Andi',
      email: 'madraniadi20@gmail',
    ),
    UserModel(
      avatar: AppAssets.kImagesAvatart1,
      username: 'Josua Nunito',
      email: 'josh_nunito@gmail.com',
    ),
    UserModel(
      avatar: AppAssets.kImagesAvatart2,
      username: 'Madrani Nunito',
      email: 'madrani_nunito@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 12),
          child: SizedBox(
            width: 225,
            child: Center(
              child: UserInfoWidget(
                user: users[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}