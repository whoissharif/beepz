import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_constants.dart';

const TextStyle kTitleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 16,
  color: kSecondaryColor,
);

const TextStyle kSubtitleTextStyle = TextStyle(
  fontSize: 13,
  color: kTextColor,
);
TextStyle kLogoTextStyle = GoogleFonts.convergence(
  textStyle: const TextStyle(
    color: Colors.white,
    fontSize: 50.0,
    fontWeight: FontWeight.w700,
  ),
);
// const TextStyle kTitleTextStyle