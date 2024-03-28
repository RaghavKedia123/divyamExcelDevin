import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/models/item_status_tags.dart';

class ItemStatusTag extends StatelessWidget {
  const ItemStatusTag({
    super.key,
    required this.itemStatus,
  });

  final ItemStatus itemStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 3,
        horizontal: 25,
      ),
      decoration: BoxDecoration(
        color: tagColors[itemStatus],
        borderRadius: BorderRadius.circular(5),
      ),
      child: BodyText(
        text: tagLabels[itemStatus]!,
        color: Colors.white,
        fontSize: 12,
      ),
    );
  }
}
