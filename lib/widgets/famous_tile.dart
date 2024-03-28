import 'package:flutter/material.dart';

import 'package:divyam_excel/models/item_actions.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/item_actions_bar.dart';
import 'package:divyam_excel/widgets/item_title.dart';
import 'package:divyam_excel/widgets/neu_button_small.dart';
import 'package:divyam_excel/widgets/neu_container.dart';

class FamousTile extends StatelessWidget {
  const FamousTile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final List<ItemAction> famousAvailableActions = [
      ItemAction(actionCount: 55.toString(), postAction: PostAction.share),
      ItemAction(actionCount: 200.toString(), postAction: PostAction.like),
      ItemAction(postAction: PostAction.favorite),
    ];

    return NeuContainer(
      padding:
          EdgeInsets.symmetric(vertical: 10, horizontal: screenWidth * 0.05),
      childWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ItemTitle(text: 'Happy Birthday Amit'),
              NeuButtonSmall(icon: Icons.more_horiz),
            ],
          ),
          const SizedBox(height: 10),
          const BodyText(
            text:
                'I think today should be a national holiday, but until they make that official, let\'s just do our best by eating cake, drinking champagne, and blowing off as many responsibilities as possible.',
          ),
          const SizedBox(height: 10),
          ItemActionsBar(itemActions: famousAvailableActions),
        ],
      ),
    );
  }
}
