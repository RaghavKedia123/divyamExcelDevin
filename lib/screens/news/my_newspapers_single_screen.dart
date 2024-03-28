import 'package:flutter/material.dart';

import 'package:divyam_excel/models/item_status_tags.dart';
import 'package:divyam_excel/widgets/body_bold_regular_text.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/item_status_tag.dart';
import 'package:divyam_excel/widgets/item_title.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/constants/colors.dart';

class MyNewspapersSingleScreen extends StatefulWidget {
  const MyNewspapersSingleScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<MyNewspapersSingleScreen> createState() =>
      _MyNewspapersSingleScreenState();
}

class _MyNewspapersSingleScreenState extends State<MyNewspapersSingleScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'My Newspapers',
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
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color(0xFFFF5555),
                      width: 1,
                    ),
                  ),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BodyText(
                        text:
                            'This newspaper has been suspended because of reported violation of terms & conditions',
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
                const ItemTitle(
                  text: 'Times of India',
                ),
                const SizedBox(height: 10),
                const ItemStatusTag(itemStatus: ItemStatus.suspended),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'State: ',
                  regularText: 'Maharashtra',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'District/Metro city: ',
                  regularText: 'Mumbai',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Registered address: ',
                  regularText:
                      '1, 136, Dr E Moses Rd, Gandhi Nagar, Upper Worli, Worli, Mumbai, Maharashtra 400018, India',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Registered mobile: ',
                  regularText: '9876543210',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Registered email: ',
                  regularText: 'thelongestemailever@rediffmail.com',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Authorized uploader user ID: ',
                  regularText: '9876543210',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Authorized uploader mobile: ',
                  regularText: '9876543210',
                ),
                const SizedBox(height: 10),
                const BodyText(text: 'PREVIOUS ISSUES STATS TABLE'),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BodyText(
                      text: '< Previous',
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                    BodyText(
                      text: 'Next >',
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
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
