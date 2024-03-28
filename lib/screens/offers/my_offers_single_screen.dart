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

class MyOffersSingleScreen extends StatefulWidget {
  const MyOffersSingleScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<MyOffersSingleScreen> createState() => _MyOffersSingleScreenState();
}

class _MyOffersSingleScreenState extends State<MyOffersSingleScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'My Offers',
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
                  borderWidth: 1,
                  borderColor: Color(0xFFFF5555),
                  childWidget: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BodyText(
                        text:
                            'This offer has been rejected because of reported violation of privacy',
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
                  text: 'Didwaniya Super Bazar',
                ),
                const SizedBox(height: 10),
                const ItemStatusTag(itemStatus: ItemStatus.rejected),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Type: ',
                  regularText: 'Regular B2C',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Title: ',
                  regularText: '50% Off on Branded Items',
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
                const BodyText(
                    text:
                        'We are offering 50% off on a range of branded products! Hurry! Offer only for limited period.'),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Product category: ',
                  regularText: 'Food',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Target age: ',
                  regularText: '30 to 50 years',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Target location: ',
                  regularText: 'Mixed',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Start date: ',
                  regularText: '23-11-2023',
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'End date: ',
                  regularText: '23-12-2023',
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(
                      Icons.thumb_up,
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
                    SizedBox(width: 8),
                    Icon(
                      Icons.remove_red_eye,
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
                      child: NeuButtonPrimary(label: 'Reuse offer'),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: NeuButtonPrimary(label: 'Edit offer'),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Center(
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
