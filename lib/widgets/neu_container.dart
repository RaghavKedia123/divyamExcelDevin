import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';

class NeuContainer extends StatelessWidget {
  const NeuContainer({
    super.key,
    required this.padding,
    required this.childWidget,
  });

  final EdgeInsets padding;
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: kBgColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            offset: Offset(-2, -2),
            blurRadius: 4,
            color: Color(0xBBFFFFFF),
          ),
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 4,
            color: Color(0x22000000),
          ),
        ],
      ),
      child: childWidget,
    );
  }
}
