import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unicons/unicons.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/models/item_actions.dart';
import 'package:divyam_excel/widgets/item_actions_bar.dart';
import 'package:divyam_excel/widgets/body_text_icon.dart';
import 'package:divyam_excel/widgets/neu_button_small.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';
import 'package:divyam_excel/widgets/item_title.dart';

class EventDetailsScreen extends StatefulWidget {
  const EventDetailsScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final List<ItemAction> eventAvailableActions = [
      ItemAction(actionCount: 55.toString(), postAction: PostAction.share),
      ItemAction(actionCount: 200.toString(), postAction: PostAction.like),
      ItemAction(actionCount: 12.toString(), postAction: PostAction.dislike),
      ItemAction(postAction: PostAction.favorite),
    ];

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Event Details',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: screenWidth * 0.05,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: (screenWidth * 0.8 - 35),
                            child: const ItemTitle(
                              text: 'Mumbai Jazz Festival - 2023',
                            ),
                          ),
                          const NeuButtonSmall(icon: Icons.more_horiz),
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
                      const SizedBox(height: 5),
                      GridView(
                        shrinkWrap: true,
                        primary: false, // disables internal scrolling
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1 / 1,
                          crossAxisSpacing: 5,
                        ),
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
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
                        text: 'Music Show',
                        icon: Icon(
                          Icons.category_outlined,
                          size: 22,
                          color: kBodyTextColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const BodyTextIcon(
                        text: 'Hindi',
                        icon: Icon(
                          UniconsLine.language,
                          size: 22,
                          color: kBodyTextColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const BodyTextIcon(
                        text: 'Sat 27 Oct 2023 - Sun 28 Oct 2023',
                        icon: Icon(
                          Icons.event,
                          size: 22,
                          color: kBodyTextColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const BodyTextIcon(
                        text: 'Phoenix Podium, Lower Parel, Mumbai',
                        icon: Icon(
                          UniconsLine.map_marker,
                          size: 22,
                          color: kBodyTextColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const BodyTextIcon(
                        text: 'Lions Club Lower Parel',
                        icon: Icon(
                          Icons.supervisor_account_outlined,
                          size: 22,
                          color: kBodyTextColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const BodyTextIcon(
                        text: 'Hon, Dr.Arvind Suradkar',
                        icon: Icon(
                          Icons.mic_none_outlined,
                          size: 22,
                          color: kBodyTextColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const BodyTextIcon(
                        text:
                            'This is a very long description of the sample event',
                        icon: Icon(
                          Icons.event_note,
                          size: 22,
                          color: kBodyTextColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const BodyTextIcon(
                        text:
                            'XYZ Stores, Balaji Plots, 987654321\nABC Shop Office, Ghatpuri Naka, 987654321',
                        icon: Icon(
                          Icons.quick_contacts_dialer_outlined,
                          size: 22,
                          color: kBodyTextColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ItemActionsBar(itemActions: eventAvailableActions),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
