import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/item_title.dart';
import 'package:divyam_excel/widgets/neu_button_small.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/models/item_actions.dart';
import 'package:divyam_excel/widgets/item_actions_bar.dart';

class EntryExitScreen extends StatefulWidget {
  const EntryExitScreen({super.key});

  @override
  State<EntryExitScreen> createState() => _EntryExitScreenState();
}

class _EntryExitScreenState extends State<EntryExitScreen> {
  final List<ItemAction> _availableActions = [
    ItemAction(actionCount: 55.toString(), postAction: PostAction.share),
    ItemAction(actionCount: 4.7.toString(), postAction: PostAction.dislike),
    ItemAction(actionCount: 203.toString(), postAction: PostAction.like),
    ItemAction(actionCount: 44.toString(), postAction: PostAction.favorite),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: screenWidth * 0.05,
          ),
          decoration: const BoxDecoration(
            color: kBgColor,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Color(0x66FFFFFF),
                blurRadius: 4.0,
                spreadRadius: 2.0,
                offset: Offset(
                  -4.0,
                  -4.0,
                ),
              ),
              BoxShadow(
                color: Color(0x22000000),
                blurRadius: 4.0,
                spreadRadius: 2.0,
                offset: Offset(
                  4.0,
                  4.0,
                ),
              )
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ItemTitle(text: 'Didwaniya Super Market'),
                          BodyText(
                            text: 'Daily needs',
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 5, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          NeuButtonSmall(icon: Icons.more_horiz),
                          SizedBox(width: 10),
                          NeuButtonSmall(icon: Icons.close),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 550,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(height: 20),
                ItemActionsBar(itemActions: _availableActions),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
