import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';

class OfferBanner extends StatelessWidget {
  const OfferBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 90,
          color: Colors.blue,
        ),
        Positioned(
          left: 5,
          bottom: 5,
          child: Container(
            height: 28,
            width: 28,
            color: const Color(0x44FFFFFF),
            child: Center(
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: kBodyTextColor,
                    width: 1,
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.more_horiz,
                    color: kBodyTextColor,
                    size: 22,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
