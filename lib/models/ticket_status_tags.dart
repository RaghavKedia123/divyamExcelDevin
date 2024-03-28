import 'package:flutter/material.dart';

enum TicketStatus {
  open,
  closed,
}

const tagColors = {
  TicketStatus.open: Color(0xFF0C952A),
  TicketStatus.closed: Color(0xFF4B4B4B),
};

const tagLabels = {
  TicketStatus.open: 'Open',
  TicketStatus.closed: 'Closed',
};

class TicketTag {
  TicketTag({
    required this.ticketTag,
  });

  final TicketTag ticketTag;
}
