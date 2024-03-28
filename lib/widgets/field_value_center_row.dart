import 'package:divyam_excel/widgets/body_text.dart';
import 'package:flutter/material.dart';

class FieldValueCenterRow extends StatelessWidget {
  const FieldValueCenterRow({
    super.key,
    required this.fieldName,
    required this.fieldValue,
  });

  final String fieldName;
  final String fieldValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: BodyText(
            text: fieldName,
            textAlign: TextAlign.right,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: BodyText(
            text: fieldValue,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
