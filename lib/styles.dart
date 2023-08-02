import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color bgColor = Color(0xffFFFFFF);
const Color blackColor = Color(0xff000000);
const Color greyColor = Color(0xffF2F2F2);
const Color blueColor = Color(0xff1877F2);

FontWeight thin = FontWeight.w100;
FontWeight extraLight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

TextStyle headerTextStyle = GoogleFonts.robotoSlab(
  color: blackColor,
  fontSize: 32,
  fontWeight: semiBold,
);

TextStyle titleTextStyle = GoogleFonts.robotoSlab(
  color: blackColor.withOpacity(0.8),
  fontSize: 16,
  fontWeight: medium,
);

TextStyle descTextStyle = GoogleFonts.robotoSlab(
  color: blackColor.withOpacity(0.6),
  fontSize: 16,
  fontWeight: regular,
);
