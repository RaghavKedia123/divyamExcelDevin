import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_bold_regular_text.dart';
import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/widgets/ticket_status_tag.dart';
import 'package:divyam_excel/models/ticket_status_tags.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class MyTicketsSingleScreen extends StatefulWidget {
  const MyTicketsSingleScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<MyTicketsSingleScreen> createState() => _MyTicketsSingleScreenState();
}

class _MyTicketsSingleScreenState extends State<MyTicketsSingleScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'My Tickets',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: screenWidth * 0.1,
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BodyText(
                text:
                    'This is my first ticket. I request admin to resolve the issue as soon as possible.',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 10),
              TicketStatusTag(ticketStatus: TicketStatus.closed),
              SizedBox(height: 10),
              BodyText(
                text: 'Details:',
                fontWeight: FontWeight.w600,
              ),
              BodyText(
                  text:
                      'I have already checked my account balance and verified the recipient details. Despite that, the transaction did not go through as expected. This is a matter of urgency, and I would appreciate prompt assistance in resolving this issue.\n\nThank you for your attention to this matter.'),
              SizedBox(height: 10),
              BodyText(
                text: 'Reply:',
                fontWeight: FontWeight.w600,
              ),
              BodyText(
                  text:
                      'I have already checked my account balance and verified the recipient details. Despite that, the transaction did not go through as expected. This is a matter of urgency, and I would appreciate prompt assistance in resolving this issue.\n\nThank you for your attention to this matter.'),
              SizedBox(height: 10),
              BodyBoldRegularText(
                  boldText: 'Created on: ', regularText: '23-09-2023'),
              SizedBox(height: 10),
              BodyBoldRegularText(boldText: 'Status: ', regularText: 'Closed'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextButton(buttonText: '< Go Back'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
