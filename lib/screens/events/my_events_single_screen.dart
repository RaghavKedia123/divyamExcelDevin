import 'package:divyam_excel/widgets/bordered_container.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/widgets/neu_button_primary.dart';
import 'package:divyam_excel/models/item_status_tags.dart';
import 'package:divyam_excel/widgets/body_bold_regular_text.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/item_status_tag.dart';
import 'package:divyam_excel/widgets/item_title.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/constants/colors.dart';

class MyEventsSingleScreen extends StatefulWidget {
  const MyEventsSingleScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<MyEventsSingleScreen> createState() => _MyEventsSingleScreenState();
}

class _MyEventsSingleScreenState extends State<MyEventsSingleScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'My Events',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      body: MainContainer(
        childWidget: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: screenWidth * 0.1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BorderedContainer(
                  borderColor: Color(0xFFFF5555),
                  borderWidth: 1,
                  childWidget: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BodyText(
                        text:
                            'This event has been rejected because of reported violation of privacy',
                        color: Color(0xFFFF5555),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      BodyText(
                        text: 'See Details',
                        color: kPrimaryColor,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const ItemTitle(text: 'Mumbai Jazz Festival - 2023'),
                const SizedBox(height: 10),
                const ItemStatusTag(itemStatus: ItemStatus.rejected),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Event category: ',
                  regularText: 'Music Show',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Language: ',
                  regularText: 'Hindi',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Start date & time: ',
                  regularText: '12-12-2023 06:30',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'End date & time: ',
                  regularText: '18-12-2023 09:30',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Organizer: ',
                  regularText: 'Lions Club Lower Parel',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Chief guest: ',
                  regularText: 'Hon. Dr. Arvind Suradkar',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Description: ',
                  regularText: 'This is a very very long description',
                ),
                const SizedBox(height: 10),
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Container(
                    color: Colors.black12,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: AspectRatio(
                          aspectRatio: 1 / 1,
                          child: Container(
                            color: Colors.black12,
                          )),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: AspectRatio(
                          aspectRatio: 1 / 1,
                          child: Container(
                            color: Colors.black12,
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Paid event: ',
                  regularText: 'Yes',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'State: ',
                  regularText: 'Maharashtra',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Metro city: ',
                  regularText: 'Mumbai',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Area: ',
                  regularText: 'Lower Parel',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                    boldText: 'Venue: ',
                    regularText: 'Phoenix Palladium, Lower Parel, Mumbai'),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Contact: ',
                  regularText:
                      'ABC Shop, Ghatpuri Road, 9876543210,\nXYZ Office, Balaji Plots, Khamgaon, 9876543210',
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: kBodyTextColor,
                      size: 16,
                    ),
                    SizedBox(width: 3),
                    BodyText(text: '4.2'),
                    SizedBox(width: 8),
                    Icon(
                      Icons.share,
                      color: kBodyTextColor,
                      size: 16,
                    ),
                    SizedBox(width: 3),
                    BodyText(text: '20'),
                  ],
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Created on: ',
                  regularText: '23-09-2023',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Status: ',
                  regularText: 'Rejected',
                ),
                const SizedBox(height: 30),
                const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: SizedBox.shrink(),
                        ),
                        Expanded(
                          flex: 2,
                          child: NeuButtonPrimary(label: 'Edit event'),
                        ),
                        Expanded(
                          flex: 1,
                          child: SizedBox.shrink(),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    CustomTextButton(buttonText: '< Go Back'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
