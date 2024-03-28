import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/widgets/body_text.dart';

class MainCategoryTile extends StatefulWidget {
  const MainCategoryTile({super.key});

  @override
  State<MainCategoryTile> createState() => _MainCategoryTileState();
}

class _MainCategoryTileState extends State<MainCategoryTile> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Color darkShadow =
        isPressed ? const Color(0x44000000) : const Color(0x22000000);
    Color lightShadow =
        isPressed ? const Color(0xDDFFFFFF) : const Color(0xBBFFFFFF);
    Offset shadowOffset = isPressed ? const Offset(2, 2) : const Offset(2, 2);
    double shadowBlur = isPressed ? 2.0 : 4.0;

    return Listener(
      onPointerUp: (_) => setState(() {
        isPressed = false;
      }),
      onPointerDown: (_) => setState(() {
        isPressed = true;
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: isPressed
            ? const EdgeInsets.only(top: 7)
            : const EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          color: kBgColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: darkShadow,
              offset: shadowOffset,
              blurRadius: shadowBlur,
              inset: isPressed,
            ),
            BoxShadow(
              color: lightShadow,
              offset: -shadowOffset,
              blurRadius: shadowBlur,
              inset: isPressed,
            ),
          ],
        ),
        child: const Column(
          children: [
            Icon(
              Icons.travel_explore_outlined,
              size: 24,
            ),
            SizedBox(height: 5),
            BodyText(
              text: 'Travel',
              fontSize: 12,
            ),
          ],
        ),
      ),
    );
  }
}
