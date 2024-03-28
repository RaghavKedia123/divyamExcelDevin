import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: const BoxDecoration(
        color: kBgColor,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFFFFFFF),
            offset: Offset(0, -4),
            blurRadius: 4,
          ),
          BoxShadow(
            color: Color(0x20000000),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
    );
  }
}
