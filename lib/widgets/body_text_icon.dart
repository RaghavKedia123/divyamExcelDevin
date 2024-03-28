import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:divyam_excel/constants/colors.dart';

class BodyTextIcon extends StatelessWidget {
  const BodyTextIcon({
    super.key,
    required this.text,
    required this.icon,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    this.color = kBodyTextColor,
  });

  final String text;
  final Widget icon;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 5),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.inter(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
