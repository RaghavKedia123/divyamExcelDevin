import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/bordered_container.dart';
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

class MyFamousSingleScreen extends StatefulWidget {
  const MyFamousSingleScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<MyFamousSingleScreen> createState() => _MyFamousSingleScreenState();
}

class _MyFamousSingleScreenState extends State<MyFamousSingleScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'My Famous',
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
                            'This famous has been suspended because of reported violation of privacy',
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
                  text: 'Happy Birthday Amit!',
                ),
                const SizedBox(height: 10),
                const ItemStatusTag(itemStatus: ItemStatus.suspended),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Description: ',
                  regularText: 'Wish you many many happy returns of the day!',
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
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Status: ',
                  regularText: 'Suspended',
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox.shrink(),
                    ),
                    Expanded(
                      flex: 2,
                      child: NeuButtonPrimary(
                        label: 'Edit famous',
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: SizedBox.shrink(),
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
