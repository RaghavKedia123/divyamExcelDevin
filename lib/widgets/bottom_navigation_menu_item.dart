import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/widgets/body_text.dart';

class BottomNavigationMenuItem extends StatefulWidget {
  const BottomNavigationMenuItem({
    super.key,
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  State<BottomNavigationMenuItem> createState() =>
      _BottomNavigationMenuItemState();
}

class _BottomNavigationMenuItemState extends State<BottomNavigationMenuItem> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Color darkShadow =
        isPressed ? const Color(0x66000000) : const Color(0x22000000);
    Color lightShadow =
        isPressed ? const Color(0x88FFFFFF) : const Color(0x44FFFFFF);
    Offset shadowOffset = isPressed ? const Offset(2, 2) : const Offset(4, 4);
    double shadowBlur = isPressed ? 4.0 : 8.0;

    return Listener(
      onPointerUp: (_) => setState(() {
        isPressed = false;
      }),
      onPointerDown: (_) => setState(() {
        isPressed = true;
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 49,
        width: 66,
        padding: isPressed
            ? const EdgeInsets.only(top: 4)
            : const EdgeInsets.only(top: 3),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: shadowOffset,
              blurRadius: shadowBlur,
              color: darkShadow,
              inset: isPressed,
            ),
            BoxShadow(
              offset: -shadowOffset,
              blurRadius: shadowBlur,
              color: lightShadow,
              inset: isPressed,
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(
              widget.icon,
              size: 24,
              color: Colors.white,
            ),
            BodyText(
              text: widget.label,
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }
}
