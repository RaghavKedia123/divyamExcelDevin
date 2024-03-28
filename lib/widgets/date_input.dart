import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:divyam_excel/constants/colors.dart';

class DateInput extends StatefulWidget {
  const DateInput({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  State<DateInput> createState() => _DateInputState();
}

class _DateInputState extends State<DateInput> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    Text hintText = Text(
      widget.hintText,
      style: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: kHintTextColor,
      ),
    );
    Text showDate = Text(
      selectedDate != null
          ? '${selectedDate!.day} - ${selectedDate!.month} - ${selectedDate!.year}'
          : '',
      style: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: kBodyTextColor,
      ),
    );

    return GestureDetector(
      onTap: () async {
        final DateTime? dateTime = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );

        if (dateTime != null) {
          setState(() {
            selectedDate = dateTime;
          });
        }
      },
      child: Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFE8E9EE),
          boxShadow: const [
            BoxShadow(
              offset: Offset(-4, -4),
              blurRadius: 4,
              color: Color(0xFFF9F9F9),
              inset: true,
            ),
            BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 4,
              color: Color(0xFFCECECE),
              inset: true,
            ),
          ],
        ),
        child: selectedDate == null ? hintText : showDate,
      ),
    );
  }
}
