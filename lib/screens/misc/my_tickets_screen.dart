import 'package:flutter/material.dart';

import 'package:divyam_excel/models/ticket_status_tags.dart';
import 'package:divyam_excel/widgets/ticket_tile.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class MyTicketsScreen extends StatefulWidget {
  const MyTicketsScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<MyTicketsScreen> createState() => _MyTicketsScreenState();
}

class _MyTicketsScreenState extends State<MyTicketsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'My Tickets',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          height: 34,
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(34),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              BodyText(
                text: 'Open new ticket',
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: screenWidth * 0.05,
          ),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BodyText(
                            text: 'Filter tickets',
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: kBodyTextColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const TicketTile(
                ticketStatus: TicketStatus.open,
                ticketTitle:
                    'This is second ticket. I hereby request the admin to resolve the issue.',
                lastActionTimestamp: 'Last update: 18-12-2023 09:15 AM',
              ),
              const SizedBox(height: 10),
              const TicketTile(
                ticketStatus: TicketStatus.closed,
                ticketTitle:
                    'This is second ticket. I hereby request the admin to resolve the issue.',
                lastActionTimestamp: 'Last update: 18-12-2023 09:15 AM',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
