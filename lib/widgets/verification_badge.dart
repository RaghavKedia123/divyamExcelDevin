import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:divyam_excel/constants/colors.dart';

// TODO: make this dynamic - include unverified version

class VerificationBadge extends StatelessWidget {
  const VerificationBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.verified,
          size: 24,
          color: kPrimaryColor,
        ),
        const SizedBox(width: 5),
        Text(
          'Verified',
          style: GoogleFonts.inter(
            fontSize: 12,
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
