import 'package:flutter/material.dart';

import '../images/images.dart';
import '../theme/app_colors.dart';
import '../theme/app_fonts.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({
    Key? key, required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.greyblack,
      child:  Text(title,
          style: AppFonts.w400s12.copyWith(
            color: AppColors.white,
          )),
      radius: 9,
    );
  }
}