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

class OfferIssueResolutionScreen extends StatefulWidget {
  const OfferIssueResolutionScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<OfferIssueResolutionScreen> createState() =>
      _OfferIssueResolutionScreenState();
}

class _OfferIssueResolutionScreenState
    extends State<OfferIssueResolutionScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Issue Resolution',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      body: MainContainer(
        childWidget: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: screenWidth * 0.1,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ItemTitle(
                  text: 'Diwali Dhamaka! 50% off on Select Brands',
                ),
                SizedBox(height: 10),
                ItemStatusTag(itemStatus: ItemStatus.suspended),
                SizedBox(height: 10),
                BodyBoldRegularText(
                  boldText: 'Action: ',
                  regularText: 'Suspended',
                ),
                SizedBox(height: 10),
                BodyBoldRegularText(
                  boldText: 'Action timestamp: ',
                  regularText: '14-12-2023 01:39 PM',
                ),
                SizedBox(height: 10),
                BodyBoldRegularText(
                  boldText: 'Reason: ',
                  regularText: 'Violation of privacy',
                ),
                SizedBox(height: 10),
                BodyBoldRegularText(
                  boldText: 'Actual complaint: ',
                  regularText:
                      'This business has shown my personal email as theirs',
                ),
                SizedBox(height: 10),
                BodyBoldRegularText(
                  boldText: 'Admin remark: ',
                  regularText:
                      'This is a serious offence. Urgent action is required from your side to avoid any further action.',
                ),
                SizedBox(height: 10),
                BodyBoldRegularText(
                  boldText: 'How to resolve: ',
                  regularText:
                      'Consider editing to change content of the field(s) in question so that it does not contain any objectionable content and submit.',
                ),
                SizedBox(height: 20),
                BorderedContainer(
                  borderWidth: 1,
                  childWidget: Column(
                    children: [
                      BodyText(
                        text:
                            'If you agree with the allegation in the report and/pr the solution recommended by the admin, edit the relevant part and submit. We will verify the changes and restore the status if everything looks good.',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      BodyText(
                        text:
                            'If you don\'t agree with the allegations and feel that you can explain your side, raise a ticket with appropriate title and explanation.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: NeuButtonPrimary(
                        label: 'Edit offer',
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: NeuButtonPrimary(
                        label: 'Raise a ticket',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Center(
                  child: CustomTextButton(buttonText: '< GO BACK'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
