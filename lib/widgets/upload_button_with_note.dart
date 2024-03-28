import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/neu_button_regular.dart';

class UploadButtonWithNote extends StatelessWidget {
  const UploadButtonWithNote({
    super.key,
    required this.noteText,
    required this.buttonText,
  });

  final String noteText;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: BodyText(
            text: noteText,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: NeuButtonRegular(label: buttonText),
        ),
      ],
    );
  }
}
