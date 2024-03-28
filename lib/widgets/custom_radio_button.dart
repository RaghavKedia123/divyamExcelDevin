import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:divyam_excel/constants/colors.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChange,
  });

  final String label;
  final dynamic value;
  final dynamic groupValue;
  final void Function() onChange;

  @override
  Widget build(BuildContext context) {
    bool isSelected = value == groupValue;

    Container innerContainer = isSelected
        ? Container(
            width: 14,
            height: 14,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              color: kPrimaryColor,
            ),
          )
        : Container(
            width: 14,
            height: 14,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              color: kBgColor,
              boxShadow: [
                BoxShadow(
                  color: Color(0xBBFFFFFF),
                  offset: Offset(-2, -2),
                  blurRadius: 2,
                  inset: true,
                ),
                BoxShadow(
                  color: Color(0x55000000),
                  offset: Offset(2, 2),
                  blurRadius: 2,
                  inset: true,
                ),
              ],
            ),
          );

    return InkWell(
      onTap: onChange,
      child: Row(
        children: [
          Container(
            width: 18,
            height: 18,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              color: kBgColor,
              boxShadow: [
                BoxShadow(
                  color: Color(0xBBFFFFFF),
                  offset: Offset(-2, -2),
                  blurRadius: 4,
                  inset: false,
                ),
                BoxShadow(
                  color: Color(0x22000000),
                  offset: Offset(2, 2),
                  blurRadius: 4,
                  inset: false,
                ),
              ],
            ),
            child: Center(child: innerContainer),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              label,
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: kBodyTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
