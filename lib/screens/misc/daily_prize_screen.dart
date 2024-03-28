import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/upload_button_with_note.dart';
import 'package:divyam_excel/widgets/item_title.dart';
import 'package:divyam_excel/widgets/neu_container.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class DailyPrizeScreen extends StatefulWidget {
  const DailyPrizeScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<DailyPrizeScreen> createState() => _DailyPrizeScreenState();
}

class _DailyPrizeScreenState extends State<DailyPrizeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Daily Prize',
        onToggleSideMenu: widget.onToggleSideMenu,
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
                    child: Container(),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              const SizedBox(height: 20),
              NeuContainer(
                padding: const EdgeInsets.all(10),
                childWidget: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        BodyText(text: '10 Nov'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const ItemTitle(
                        text: 'Get offer postings of value more than ₹ 1000'),
                    const SizedBox(height: 10),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: Container(
                        color: Colors.black12,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const CustomTextInput(hintText: 'Answer'),
                    const SizedBox(height: 20),
                    const UploadButtonWithNote(
                      noteText: 'Attach image',
                      buttonText: 'Select image',
                    ),
                    const SizedBox(height: 30),
                    const CustomSubmitButton(buttonText: 'Submit'),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
