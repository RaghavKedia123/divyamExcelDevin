import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/models/item_actions.dart';
import 'package:divyam_excel/widgets/body_text_icon.dart';
import 'package:divyam_excel/widgets/item_actions_bar.dart';
import 'package:divyam_excel/widgets/verification_badge.dart';
import 'package:divyam_excel/widgets/neu_container.dart';
import 'package:divyam_excel/widgets/item_title.dart';
import 'package:divyam_excel/widgets/body_text.dart';

class ListingTile extends StatelessWidget {
  const ListingTile({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ItemAction> availableActions = [
      ItemAction(actionCount: 55.toString(), postAction: PostAction.share),
      ItemAction(actionCount: 4.8.toString(), postAction: PostAction.rating),
      ItemAction(postAction: PostAction.call),
      ItemAction(postAction: PostAction.location),
      ItemAction(postAction: PostAction.favorite),
    ];

    return NeuContainer(
      padding: const EdgeInsets.all(10),
      childWidget: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ItemTitle(text: 'Didwaniya Super Bazar'),
                    const SizedBox(height: 5),
                    const BodyText(text: 'Grocery'),
                    const SizedBox(height: 5),
                    const VerificationBadge(),
                    const SizedBox(height: 5),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: const Color(0xFF0C952A),
                          width: 1,
                        ),
                      ),
                      child: const BodyText(
                        text: 'Offer(s) available today',
                        fontSize: 12,
                        color: Color(0xFF0C952A),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const BodyTextIcon(
                      text: 'Main Market, Near SBI Main Branch, 444303',
                      icon: Icon(Icons.location_on_outlined,
                          color: kBodyTextColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Container(
                    color: Colors.black12,
                  ),
                ),
              ),
            ],
          ),
          ItemActionsBar(itemActions: availableActions),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
