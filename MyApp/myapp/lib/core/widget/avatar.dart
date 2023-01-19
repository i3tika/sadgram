import 'package:flutter/material.dart';

import '../images/images.dart';
import '../theme/app_colors.dart';
import '../theme/app_fonts.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Image.asset(
            AppImages.avatar,
            width: 36,
            height: 36,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // title
              'viktoria_fox',
              style: AppFonts.w600s14,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              title,
              style: AppFonts.w400s12,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              '1ч. назад',
              style: AppFonts.w400s12.copyWith(color: AppColors.grey),
            )
          ],
        ),
        const SizedBox(
          width: 202,
        ),
        Image.asset(
          AppImages.dogs,
          width: 36,
          height: 36,
        ),
      ],
    );
  }
}