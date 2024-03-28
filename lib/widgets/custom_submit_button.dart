import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:divyam_excel/constants/colors.dart';

class CustomSubmitButton extends StatefulWidget {
  const CustomSubmitButton({required this.buttonText, super.key});

  final String buttonText;

  @override
  State<CustomSubmitButton> createState() => _CustomSubmitButtonState();
}

class _CustomSubmitButtonState extends State<CustomSubmitButton> {
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
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: kBgColor,
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
          child: Container(
            // height: 42,
            margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Center(
              child: Text(
                widget.buttonText,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: isPressed
                      ? 3.25
                      : 0, // can't use BodyText widget because this property is required
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
