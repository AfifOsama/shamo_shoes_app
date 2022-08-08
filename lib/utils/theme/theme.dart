import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

class AppTheme {
  static TextStyle primary = GoogleFonts.poppins(
    color: AppColor.primaryText,
  );
  static TextStyle secondary = GoogleFonts.poppins(
    color: AppColor.secondaryText,
  );
  static TextStyle price = GoogleFonts.poppins(
    color: AppColor.price,
  );
  static TextStyle subtitle = GoogleFonts.poppins(
    color: AppColor.subtitleText,
  );
  static TextStyle hightlightedText = GoogleFonts.poppins(
    color: AppColor.primary,
    fontWeight: AppTheme.medium,
    fontSize: 12.sp,
  );
  static TextStyle blackText = GoogleFonts.poppins(color: AppColor.blackText);

  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;

  static double defaultMargin = 28;

  static ButtonStyle textButton = TextButton.styleFrom(
    backgroundColor: AppColor.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );
}
