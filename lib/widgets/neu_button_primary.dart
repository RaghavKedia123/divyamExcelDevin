import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/widgets/body_text.dart';

class NeuButtonPrimary extends StatefulWidget {
  const NeuButtonPrimary({
    super.key,
    required this.label,
  });

  final String label;

  @override
  State<NeuButtonPrimary> createState() => _NeuButtonPrimaryState();
}

class _NeuButtonPrimaryState extends State<NeuButtonPrimary> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Color darkShadow =
        isPressed ? const Color(0x77000000) : const Color(0x33000000);
    Color lightShadow =
        isPressed ? const Color(0xCCFFFFFF) : const Color(0xFFFFFFFF);
    Offset shadowOffset = isPressed ? const Offset(3, 3) : const Offset(3, 3);
    double shadowBlur = isPressed ? 3.0 : 3.0;

    return Listener(
      onPointerUp: (_) => setState(() {
        isPressed = false;
      }),
      onPointerDown: (_) => setState(() {
        isPressed = true;
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 35,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          border: Border.all(
            color: kBgColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(34),
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
        child: Center(
          child: BodyText(
            text: widget.label,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
