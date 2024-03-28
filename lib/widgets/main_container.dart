import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({
    super.key,
    required this.childWidget,
  });

  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 15),
      decoration: const BoxDecoration(
        color: kBgColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Color(0x66FFFFFF),
            blurRadius: 4.0,
            spreadRadius: 2.0,
            offset: Offset(
              -4.0,
              -4.0,
            ),
          ),
          BoxShadow(
            color: Color(0x22000000),
            blurRadius: 4.0,
            spreadRadius: 2.0,
            offset: Offset(
              4.0,
              4.0,
            ),
          )
        ],
      ),
      child: childWidget,
    );
  }
}
