import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:divyam_excel/constants/colors.dart';

class TopTabs4 extends StatelessWidget {
  const TopTabs4({
    super.key,
    required this.tab1Text,
    required this.tab2Text,
    required this.tab3Text,
    required this.tab4Text,
  });

  final String tab1Text;
  final String tab2Text;
  final String tab3Text;
  final String tab4Text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kBgColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            offset: Offset(-2, -2),
            blurRadius: 4,
            color: Color(0xAAFFFFFF),
          ),
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 4,
            color: Color(0x22000000),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(-4, -4),
                    blurRadius: 4,
                    color: Color(0xAAFFFFFF),
                    inset: true,
                  ),
                  BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 4,
                    color: Color(0x66000000),
                    inset: true,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  tab1Text.toUpperCase(),
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                tab2Text.toUpperCase(),
                style: GoogleFonts.inter(
                  color: kBodyTextColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                tab3Text.toUpperCase(),
                style: GoogleFonts.inter(
                  color: kBodyTextColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                tab4Text.toUpperCase(),
                style: GoogleFonts.inter(
                  color: kBodyTextColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
