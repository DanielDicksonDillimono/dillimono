import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum viewMode { dark, light }
enum View { aboutMe, projects }
TextStyle lightTextStyle = GoogleFonts.montserrat(
  color: const Color.fromARGB(255, 38, 38, 38),
  fontWeight: FontWeight.w400,
  fontSize: 17,
);

TextStyle darkTextStyle = GoogleFonts.montserrat(
  color: Colors.white,
  fontWeight: FontWeight.w400,
  fontSize: 17,
);

TextStyle lightTitleStyle = GoogleFonts.montserrat(
  color: const Color.fromARGB(255, 38, 38, 38),
  fontWeight: FontWeight.bold,
  fontSize: 30,
);

TextStyle darkTitleStyle = GoogleFonts.montserrat(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 30,
);

TextStyle lightSubTitleStyle = GoogleFonts.montserrat(
  color: const Color.fromARGB(255, 38, 38, 38),
  fontWeight: FontWeight.w300,
  fontSize: 25,
);

TextStyle darkSubTitleStyle = GoogleFonts.montserrat(
  color: Colors.white,
  fontWeight: FontWeight.w300,
  fontSize: 25,
);
