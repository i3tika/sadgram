import 'package:flutter/material.dart';

import '../images/images.dart';
import '../theme/app_colors.dart';
import '../theme/app_fonts.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Image.asset(
            AppImages.avatar,
            width: 36,
            height: 36,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  // title
                  'viktoria_fox',
                  style: AppFonts.w600s14,
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'Комментирует',
                  style: AppFonts.w400s12,
                ),
                const
                SizedBox(
                  height: 4,
                ),
                // Text(
                //   'В целом, конечно, семантический разбор\nвнешних противодействий создаёт\nпредпосылки...',
                //   style: AppFonts.w400s12
                //       .copyWith(color: AppColors.grey),
                // ),
                Text(
                  title,
                  style: AppFonts.w400s12.copyWith(color: AppColors.grey),
                ),
                const
                SizedBox(
                  height: 4,
                ),
                Text(
                  '1ч. назад',
                  style: AppFonts.w400s12.copyWith(color: AppColors.grey),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 60,
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

