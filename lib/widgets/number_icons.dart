import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flextras/flextras.dart';

class NumberIcons extends StatelessWidget {
  const NumberIcons({
    super.key,
    required this.numberString,
    required this.color,
    this.size = 14,
    this.gap = 0,
  });

  final String numberString;
  final Color color;
  final double size;
  final double gap;

  @override
  Widget build(BuildContext context) {
    Map<String, IconData> iconsMap = {
      '1': FontAwesomeIcons.one,
      '2': FontAwesomeIcons.two,
      '3': FontAwesomeIcons.three,
      '4': FontAwesomeIcons.four,
      '5': FontAwesomeIcons.five,
      '6': FontAwesomeIcons.six,
      '7': FontAwesomeIcons.seven,
      '8': FontAwesomeIcons.eight,
      '9': FontAwesomeIcons.nine,
      '0': FontAwesomeIcons.zero,
    };

    return SeparatedRow(
      separatorBuilder: () => SizedBox(width: gap),
      children: numberString
          .split('')
          .map(
            (digitString) => FaIcon(
              iconsMap[digitString],
              color: color,
              size: size,
            ),
          )
          .toList(),
    );
  }
}
