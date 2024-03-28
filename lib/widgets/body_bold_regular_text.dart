import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:divyam_excel/constants/colors.dart';

class BodyBoldRegularText extends StatelessWidget {
  const BodyBoldRegularText({
    super.key,
    required this.boldText,
    required this.regularText,
  });

  final String boldText;
  final String regularText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.inter(
          fontSize: 14,
          color: kBodyTextColor,
        ),
        children: [
          TextSpan(
            text: boldText,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: regularText,
            style: GoogleFonts.inter(),
          ),
        ],
      ),
    );
  }
}
