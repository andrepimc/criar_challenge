import 'package:criar_challenge/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle appBarTitle = GoogleFonts.poppins(
    fontSize: 16,
    color: AppColors.darkMainText,
    fontWeight: FontWeight.w500,
  );
  static TextStyle tableCeilLabel = GoogleFonts.poppins(
    fontSize: 14,
    color: AppColors.darkMainText,
    fontWeight: FontWeight.w500,
  );
  static TextStyle tableCeilTitleLabel = GoogleFonts.poppins(
    fontSize: 12,
    color: AppColors.darkMainText,
    fontWeight: FontWeight.w700,
  );
  static TextStyle buttonLabel = GoogleFonts.poppins(
    fontSize: 14,
    color: AppColors.darkMainText,
    fontWeight: FontWeight.w700,
  );
  static TextStyle screenLabel = GoogleFonts.poppins(
    fontSize: 14,
    color: AppColors.darkSecondaryText,
    fontWeight: FontWeight.w600,
  );
  static TextStyle thinScreenLabel = GoogleFonts.poppins(
    fontSize: 14,
    color: AppColors.darkTertiaryText,
    fontWeight: FontWeight.w400,
  );
}
