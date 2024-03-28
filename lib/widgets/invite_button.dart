import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/widgets/body_text.dart';

class InviteButton extends StatefulWidget {
  const InviteButton({
    super.key,
    required this.label,
  });

  final String label;

  @override
  State<InviteButton> createState() => _InviteButtonState();
}

class _InviteButtonState extends State<InviteButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Color darkShadow =
        isPressed ? const Color(0x77000000) : const Color(0x20000000);
    Color lightShadow =
        isPressed ? const Color(0xCCFFFFFF) : const Color(0xFFFFFFFF);
    Offset shadowOffset = isPressed ? const Offset(4, 4) : const Offset(8, 8);
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
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          border: Border.all(
            width: 4,
            color: kBgColor,
          ),
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
        child: const Center(
          child: BodyText(
            text: 'To  your\nLeft hand',
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
