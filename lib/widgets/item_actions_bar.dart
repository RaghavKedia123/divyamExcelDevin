import 'package:flutter/material.dart';

import 'package:divyam_excel/models/item_actions.dart';
import 'package:divyam_excel/widgets/item_action_button.dart';

class ItemActionsBar extends StatelessWidget {
  const ItemActionsBar({
    super.key,
    required this.itemActions,
  });

  final List<ItemAction> itemActions;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...itemActions.map((action) {
          return ItemActionButton(
            actionCount: action.actionCount == null ? '' : action.actionCount!,
            icon: actionIcons[action.postAction]!,
            iconColor: iconColors[action.postAction]!,
            actionLabel: actionLabels[action.postAction]!,
          );
        }),
      ],
    );
  }
}
