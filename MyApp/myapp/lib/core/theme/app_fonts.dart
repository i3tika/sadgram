import 'package:flutter/cupertino.dart';
import 'package:myapp/core/theme/app_colors.dart';

abstract class AppFonts {
  static const TextStyle w400s14 = TextStyle(fontSize: 14,fontWeight: FontWeight.w400,);
  static const TextStyle w600s14 = TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.white);
  static const TextStyle w400s12 = TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.white);
}
