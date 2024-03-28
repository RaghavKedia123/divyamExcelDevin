import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:divyam_excel/widgets/body_text_icon.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/models/item_actions.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/item_actions_bar.dart';
import 'package:divyam_excel/widgets/item_title.dart';
import 'package:divyam_excel/widgets/neu_button_small.dart';
import 'package:divyam_excel/widgets/neu_container.dart';

class EventTile extends StatelessWidget {
  const EventTile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final List<ItemAction> eventAvailableActions = [
      ItemAction(actionCount: 55.toString(), postAction: PostAction.share),
      ItemAction(actionCount: 200.toString(), postAction: PostAction.like),
      ItemAction(actionCount: 12.toString(), postAction: PostAction.dislike),
      ItemAction(postAction: PostAction.favorite),
    ];

    return NeuContainer(
      padding:
          EdgeInsets.symmetric(vertical: 10, horizontal: screenWidth * 0.05),
      childWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ItemTitle(text: 'Mumbai Jazz Festival - 2023'),
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
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: kPrimaryColor,
                    width: 1,
                  ),
                ),
                child: BodyText(
                  text: 'Paid Event'.toUpperCase(),
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: kPrimaryColor,
                ),
              ),
              const SizedBox(width: 20),
              const NeuButtonSmall(
                icon: Icons.phone,
                buttonSize: 30,
                iconColor: Color(0xFF0C952A),
              ),
              const SizedBox(width: 20),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: kBgColor,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFFFFFFF),
                      blurRadius: 4.0,
                      offset: Offset(-3.0, -3.0),
                    ),
                    BoxShadow(
                      color: Color(0x22000000),
                      blurRadius: 4.0,
                      offset: Offset(3.0, 3.0),
                    )
                  ],
                ),
                child: const Center(
                  child: FaIcon(
                    FontAwesomeIcons.whatsapp,
                    size: 24,
                    color: Color(0xFF1FAF38),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const BodyTextIcon(
            text: 'Sat 27 Oct 2023 - Sun 28 Oct 2023',
            icon: Icon(Icons.event),
          ),
          const SizedBox(height: 5),
          const BodyTextIcon(
            text: 'Main Market, Near SBI Main Branch, 444303',
            icon: Icon(Icons.location_on_outlined),
          ),
          const SizedBox(height: 20),
          ItemActionsBar(itemActions: eventAvailableActions),
        ],
      ),
    );
  }
}
