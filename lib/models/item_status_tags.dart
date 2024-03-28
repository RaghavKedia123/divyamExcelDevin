import 'package:flutter/material.dart';

enum ItemStatus {
  pending,
  approved,
  rejected,
  live,
  suspended,
}

const tagColors = {
  ItemStatus.pending: Color(0xFFFFA855),
  ItemStatus.approved: Color(0xFF3F98D8),
  ItemStatus.rejected: Color(0xFFFF5555),
  ItemStatus.live: Color(0xFF0C952A),
  ItemStatus.suspended: Color(0xFFFF5555),
};

const tagLabels = {
  ItemStatus.pending: 'Pending',
  ItemStatus.approved: 'Approved',
  ItemStatus.rejected: 'Rejected',
  ItemStatus.live: 'Live',
  ItemStatus.suspended: 'Suspended',
};

class ItemTag {
  ItemTag({
    required this.itemTag,
  });

  final ItemTag itemTag;
}
