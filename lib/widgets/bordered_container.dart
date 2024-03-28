import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';

class BorderedContainer extends StatelessWidget {
  const BorderedContainer({
    super.key,
    required this.childWidget,
    this.borderColor = kBodyTextColor,
    this.borderWidth = 2,
  });

  final Widget childWidget;
  final Color borderColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: childWidget,
    );
  }
}
