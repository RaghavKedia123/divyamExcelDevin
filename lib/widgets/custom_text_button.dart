import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:divyam_excel/constants/colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.buttonText,
    this.color = kPrimaryColor,
  });

  final String buttonText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        buttonText.toUpperCase(),
        textAlign: TextAlign.center,
        style: GoogleFonts.inter(
          color: color,
          fontSize: 15,
          fontWeight: FontWeight.w600,
          shadows: [
            const BoxShadow(
              color: Color(0x28000000),
              offset: Offset(1.3, 1.3),
              blurRadius: 2,
            ),
          ],
        ),
      ),
    );
  }
}
