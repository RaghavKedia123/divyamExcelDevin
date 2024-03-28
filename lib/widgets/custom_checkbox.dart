import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    required this.label,
    required this.isChecked,
    required this.onChange,
  });

  final String label;
  final bool isChecked;
  final void Function() onChange;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChange,
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: isChecked ? kPrimaryColor : kBgColor,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xBBFFFFFF),
                  offset: Offset(-2, -2),
                  blurRadius: 4,
                ),
                BoxShadow(
                  color: Color(0x22000000),
                  offset: Offset(2, 2),
                  blurRadius: 4,
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: BodyText(text: label),
          ),
        ],
      ),
    );
  }
}
