import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/widgets/body_text.dart';

class ItemActionButton extends StatefulWidget {
  const ItemActionButton({
    super.key,
    required this.actionCount,
    required this.icon,
    required this.iconColor,
    required this.actionLabel,
  });

  final String actionCount;
  final IconData icon;
  final Color iconColor;
  final String actionLabel;

  @override
  State<ItemActionButton> createState() => _ItemActionButtonState();
}

class _ItemActionButtonState extends State<ItemActionButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Color darkShadow =
        isPressed ? const Color(0x44000000) : const Color(0x33000000);
    Color lightShadow =
        isPressed ? const Color(0xCCFFFFFF) : const Color(0xFFFFFFFF);
    Offset shadowOffset = isPressed ? const Offset(1, 1) : const Offset(3, 3);
    double shadowBlur = isPressed ? 2.0 : 4.0;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BodyText(
          text: widget.actionCount,
          fontSize: 10,
          color: kBodyTextColor,
        ),
        const SizedBox(height: 5),
        Listener(
          onPointerUp: (_) => setState(() {
            isPressed = false;
          }),
          onPointerDown: (_) => setState(() {
            isPressed = true;
          }),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 33,
            width: 33,
            decoration: BoxDecoration(
              color: kBgColor,
              borderRadius: BorderRadius.circular(33),
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
            child: Icon(
              widget.icon,
              size: 24,
              color: widget.iconColor,
            ),
          ),
        ),
        const SizedBox(height: 5),
        BodyText(
          text: widget.actionLabel,
          fontSize: 10,
          color: kBodyTextColor,
        ),
      ],
    );
  }
}
