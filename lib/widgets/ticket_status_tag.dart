import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/models/ticket_status_tags.dart';

class TicketStatusTag extends StatelessWidget {
  const TicketStatusTag({
    super.key,
    required this.ticketStatus,
  });

  final TicketStatus ticketStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 3,
        horizontal: 25,
      ),
      decoration: BoxDecoration(
        color: tagColors[ticketStatus],
        borderRadius: BorderRadius.circular(5),
      ),
      child: BodyText(
        text: tagLabels[ticketStatus]!,
        color: Colors.white,
        fontSize: 12,
      ),
    );
  }
}
