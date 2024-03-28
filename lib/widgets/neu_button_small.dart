import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';

class NeuButtonSmall extends StatelessWidget {
  const NeuButtonSmall({
    super.key,
    required this.icon,
    this.iconColor = kBodyTextColor,
    this.buttonSize = 30,
  });

  final IconData icon;
  final Color iconColor;
  final double buttonSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonSize,
      width: buttonSize,
      decoration: BoxDecoration(
        color: kBgColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFFFFFFF),
            blurRadius: 4.0,
            offset: Offset(-3.0, -3.0),
          ),
          BoxShadow(
            color: Color(0x22000000),
            blurRadius: 4.0,
            offset: Offset(3.0, 3.0),
          )
        ],
      ),
      child: Icon(
        icon,
        size: 22,
        color: iconColor,
      ),
    );
  }
}
