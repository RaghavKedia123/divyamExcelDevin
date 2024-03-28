import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:divyam_excel/constants/colors.dart';

class NoteText extends StatelessWidget {
  const NoteText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        fontSize: 13,
        color: kBodyTextColor,
      ),
    );
  }
}
