import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/models/item_actions.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/item_actions_bar.dart';
import 'package:divyam_excel/widgets/item_title.dart';
import 'package:divyam_excel/widgets/neu_button_small.dart';
import 'package:divyam_excel/widgets/neu_container.dart';

class OfferTile extends StatelessWidget {
  const OfferTile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final List<ItemAction> offerAvailableActions = [
      ItemAction(actionCount: 55.toString(), postAction: PostAction.share),
      ItemAction(actionCount: 200.toString(), postAction: PostAction.like),
      ItemAction(actionCount: 12.toString(), postAction: PostAction.dislike),
      ItemAction(actionCount: '1.5k', postAction: PostAction.views),
      ItemAction(postAction: PostAction.favorite),
    ];

    return NeuContainer(
      padding:
          EdgeInsets.symmetric(vertical: 10, horizontal: screenWidth * 0.05),
      childWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ItemTitle(
                            text: 'Didwaniya Super Market',
                          ),
                          BodyText(
                            text: 'Daily needs',
                            fontSize: 13,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFF28C76F),
                        width: 1,
                      ),
                    ),
                    child: const BodyText(
                      text: 'Buy 1 Get 1 Free',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 5, 0),
                child: Column(
                  children: [
                    NeuButtonSmall(
                      icon: Icons.phone_outlined,
                      iconColor: Color(0xFF0C952A),
                    ),
                    SizedBox(height: 20),
                    NeuButtonSmall(icon: Icons.more_horiz),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BodyText(
                text: 'We are offering 50% off on select...',
                maxLines: 1,
                fontSize: 13,
              ),
              SizedBox(width: 10),
              BodyText(
                text: 'See more',
                fontSize: 13,
                color: kHintTextColor,
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: BodyText(
                  text: 'MRP: ₹ 1000',
                  maxLines: 1,
                  fontSize: 13,
                ),
              ),
              Expanded(
                flex: 1,
                child: BodyText(
                  text: 'Discounted price: ₹ 500',
                  fontSize: 13,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ItemActionsBar(itemActions: offerAvailableActions),
        ],
      ),
    );
  }
}
