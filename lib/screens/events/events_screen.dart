import 'package:divyam_excel/widgets/floating_buttons_2.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/event_tile.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Events',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      floatingActionButton: const FloatingButtons2(),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 30,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                color: kBgColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(-2, -2),
                                    blurRadius: 4,
                                    color: Color(0xBBFFFFFF),
                                  ),
                                  BoxShadow(
                                    offset: Offset(2, 2),
                                    blurRadius: 4,
                                    color: Color(0x22000000),
                                  ),
                                ],
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  BodyText(
                                    text: 'Filter events',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Icon(Icons.arrow_drop_down)
                                ],
                              ),
                            ),
                          ),
                          const VerticalDivider(width: 10),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 30,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                color: kBgColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(-2, -2),
                                    blurRadius: 4,
                                    color: Color(0xBBFFFFFF),
                                  ),
                                  BoxShadow(
                                    offset: Offset(2, 2),
                                    blurRadius: 4,
                                    color: Color(0x22000000),
                                  ),
                                ],
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  BodyText(
                                    text: 'Khamgaon',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: kHintTextColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                  ),
                  child: const EventTile(),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  height: 90,
                  color: Colors.blue,
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                  ),
                  child: const EventTile(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
