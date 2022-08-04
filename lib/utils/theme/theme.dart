import 'package:flutter/material.dart';
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

  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;
}
