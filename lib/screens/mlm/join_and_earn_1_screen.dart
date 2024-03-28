import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/bordered_container.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class JoinAndEarn1Screen extends StatefulWidget {
  const JoinAndEarn1Screen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<JoinAndEarn1Screen> createState() => _JoinAndEarn1ScreenState();
}

class _JoinAndEarn1ScreenState extends State<JoinAndEarn1Screen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Join & Earn Forever',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: screenWidth * 0.05,
            ),
            child: const Column(
              children: [
                BodyText(
                  text: 'Total Downline Members Under You',
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 10),
                BodyText(
                  text: '328',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 20),
                BodyText(
                  text: 'Top Earners of Your District',
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 10),
                BorderedContainer(
                  borderColor: kPrimaryColor,
                  borderWidth: 2,
                  childWidget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BodyText(text: 'Dr. Arvind Suradkar'),
                      BodyText(
                          text:
                              'Congratulations on winning 11,500 Coins this week!'),
                      BodyText(text: 'User ID: 1234567890'),
                      BodyText(text: 'Taluka: Khamgaon'),
                      Divider(
                        height: 20,
                        color: kPrimaryColor,
                      ),
                      BodyText(text: 'Dr. Arvind Suradkar'),
                      BodyText(
                          text:
                              'Congratulations on winning 11,500 Coins this week!'),
                      BodyText(text: 'User ID: 1234567890'),
                      BodyText(text: 'Taluka: Khamgaon'),
                      Divider(
                        height: 20,
                        color: kPrimaryColor,
                      ),
                      BodyText(text: 'Dr. Arvind Suradkar'),
                      BodyText(
                          text:
                              'Congratulations on winning 11,500 Coins this week!'),
                      BodyText(text: 'User ID: 1234567890'),
                      BodyText(text: 'Taluka: Khamgaon'),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                BodyText(
                  text: 'Top Earners of the Company',
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 10),
                BorderedContainer(
                  borderColor: kPrimaryColor,
                  borderWidth: 2,
                  childWidget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BodyText(text: 'Dr. Arvind Suradkar'),
                      BodyText(
                          text:
                              'Congratulations on winning 11,500 Coins this week!'),
                      BodyText(text: 'User ID: 1234567890'),
                      BodyText(text: 'Taluka: Khamgaon'),
                      Divider(
                        height: 20,
                        color: kPrimaryColor,
                      ),
                      BodyText(text: 'Dr. Arvind Suradkar'),
                      BodyText(
                          text:
                              'Congratulations on winning 11,500 Coins this week!'),
                      BodyText(text: 'User ID: 1234567890'),
                      BodyText(text: 'Taluka: Khamgaon'),
                      Divider(
                        height: 20,
                        color: kPrimaryColor,
                      ),
                      BodyText(text: 'Dr. Arvind Suradkar'),
                      BodyText(
                          text:
                              'Congratulations on winning 11,500 Coins this week!'),
                      BodyText(text: 'User ID: 1234567890'),
                      BodyText(text: 'Taluka: Khamgaon'),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                CustomSubmitButton(buttonText: 'Next'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
