import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/widgets/neu_button_primary.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/bordered_container.dart';
import 'package:divyam_excel/models/item_status_tags.dart';
import 'package:divyam_excel/widgets/body_bold_regular_text.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/item_status_tag.dart';
import 'package:divyam_excel/widgets/item_title.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/constants/colors.dart';

class MyBusinessesSingleScreen extends StatefulWidget {
  const MyBusinessesSingleScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<MyBusinessesSingleScreen> createState() =>
      _MyBusinessesSingleScreenState();
}

class _MyBusinessesSingleScreenState extends State<MyBusinessesSingleScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'My Businesses',
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
                            'This business listing has been suspended because of reported violation of privacy',
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ItemTitle(
                            text: 'Didwaniya Super Bazar',
                          ),
                          SizedBox(height: 10),
                          ItemStatusTag(itemStatus: ItemStatus.suspended),
                          SizedBox(height: 10),
                          BodyBoldRegularText(
                            boldText: 'Mobile: ',
                            regularText: '9876543210',
                          ),
                          SizedBox(height: 10),
                          BodyBoldRegularText(
                            boldText: 'WhatsApp: ',
                            regularText: '9876543210',
                          ),
                        ],
                      ),
                    ),
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
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Email: ',
                  regularText: 'dhruvmarketkhamgaon@rediffmail.com',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Website: ',
                  regularText: 'http://www.dhruvmarketkhamgaon.com',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Contact Person: ',
                  regularText: 'Shashwat Dharangaonkar',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'State: ',
                  regularText: 'Maharashtra',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'District: ',
                  regularText: 'Buldhana',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Taluka: ',
                  regularText: 'Khamgaon',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Registered Address:\n',
                  regularText:
                      'Main Market, Near SBI Main Branch, Ghatpuri Naka, Khamgaon',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'PIN: ',
                  regularText: '444303',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Timings: ',
                  regularText: '09:30 AM - 09:00 PM',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Level 1 category: ',
                  regularText: 'Fashion',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Level 2 category: ',
                  regularText: 'Clothing',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Level 3 category ',
                  regularText: 'Men\'s Clothing',
                ),
                const SizedBox(height: 10),
                const BodyText(
                  text: 'Services/Products: ',
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 5),
                const BodyText(
                  text: 'Insurance',
                ),
                const SizedBox(height: 5),
                const BodyText(
                  text: 'Investment',
                ),
                const SizedBox(height: 5),
                const BodyText(
                  text: 'Share Trading',
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
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                  regularText: '12-12-2023',
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    Expanded(
                      flex: 2,
                      child: NeuButtonPrimary(label: 'Edit Business'),
                    ),
                    Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextButton(buttonText: '< GO BACK'),
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
