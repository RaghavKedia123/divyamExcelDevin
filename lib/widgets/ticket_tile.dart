import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/models/ticket_status_tags.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/neu_container.dart';
import 'package:divyam_excel/widgets/ticket_status_tag.dart';

class TicketTile extends StatelessWidget {
  const TicketTile({
    super.key,
    required this.ticketStatus,
    required this.ticketTitle,
    required this.lastActionTimestamp,
  });

  final TicketStatus ticketStatus;
  final String ticketTitle;
  final String lastActionTimestamp;

  @override
  Widget build(BuildContext context) {
    return NeuContainer(
      padding: const EdgeInsets.all(10),
      childWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TicketStatusTag(ticketStatus: ticketStatus),
          const SizedBox(height: 10),
          BodyText(
            text: ticketTitle,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 10),
          BodyText(
            text: lastActionTimestamp,
            fontSize: 12,
            color: kHintTextColor,
          ),
        ],
      ),
    );
  }
}
