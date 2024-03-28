import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:divyam_excel/constants/colors.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    super.key,
    this.hintText,
    this.controller,
  });

  final String? hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kBgColor,
        boxShadow: const [
          BoxShadow(
            offset: Offset(-4, -4),
            blurRadius: 4,
            color: Color(0xFFF9F9F9),
            inset: true,
          ),
          BoxShadow(
            offset: Offset(4, 4),
            blurRadius: 4,
            color: Color(0xFFCECECE),
            inset: true,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        style: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: kBodyTextColor,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          hintStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: kHintTextColor,
          ),
        ),
      ),
    );
  }
}
