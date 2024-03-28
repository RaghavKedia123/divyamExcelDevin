import 'package:flutter/material.dart';

class FloatingButtons1 extends StatelessWidget {
  const FloatingButtons1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 42,
        width: 42,
        decoration: BoxDecoration(
          color: const Color(0x8804BFD4),
          borderRadius: BorderRadius.circular(42),
        ),
        child: const Icon(
          Icons.handshake_outlined,
          color: Color(0x88FFFFFF),
        ),
      ),
    );
  }
}
