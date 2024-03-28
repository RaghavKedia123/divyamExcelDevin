import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:divyam_excel/constants/colors.dart';

class BodyText extends StatelessWidget {
  const BodyText({
    super.key,
    required this.text,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.w500,
    this.color = kBodyTextColor,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
