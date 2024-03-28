import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:divyam_excel/widgets/bordered_container.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/custom_divider.dart';
import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class MyTeamScreen extends StatefulWidget {
  const MyTeamScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<MyTeamScreen> createState() => _MyTeamScreenState();
}

class _MyTeamScreenState extends State<MyTeamScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'My Team',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: screenWidth * 0.1,
            ),
            child: const Column(
              children: [
                BodyText(
                  text:
                      'Click on the buttons below to join WhatsApp group of your upline',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                UplineWhatsapp(uplineName: 'Abhishek Deshpande'),
                SizedBox(height: 10),
                UplineWhatsapp(uplineName: 'Abhishek Deshpande'),
                SizedBox(height: 10),
                UplineWhatsapp(uplineName: 'Abhishek Deshpande'),
                SizedBox(height: 10),
                UplineWhatsapp(uplineName: 'Abhishek Deshpande'),
                SizedBox(height: 10),
                UplineWhatsapp(uplineName: 'Abhishek Deshpande'),
                SizedBox(height: 10),
                UplineWhatsapp(uplineName: 'Abhishek Deshpande'),
                SizedBox(height: 10),
                UplineWhatsapp(uplineName: 'Abhishek Deshpande'),
                SizedBox(height: 10),
                UplineWhatsapp(uplineName: 'Abhishek Deshpande'),
                SizedBox(height: 10),
                UplineWhatsapp(uplineName: 'Abhishek Deshpande'),
                SizedBox(height: 10),
                UplineWhatsapp(uplineName: 'Abhishek Deshpande'),
                SizedBox(height: 30),
                CustomDivider(),
                SizedBox(height: 30),
                CustomTextButton(buttonText: 'Enter Your WhasApp Group link'),
                SizedBox(height: 10),
                BodyText(
                  text:
                      'Create WhatsApp group for connecting with your downline members',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                CustomDivider(),
                SizedBox(height: 30),
                CustomTextButton(buttonText: 'Create Event for Your Network'),
                SizedBox(height: 10),
                BodyText(text: 'You have 5000 members in your network'),
                SizedBox(height: 30),
                CustomDivider(),
                SizedBox(height: 30),
                BorderedContainer(
                  childWidget: Column(
                    children: [
                      BodyText(
                        text: 'Upline User IDs',
                        fontWeight: FontWeight.w700,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BodyText(text: 'Lucas Thomson'),
                          BodyText(text: 'EE987654642'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BodyText(text: 'Lucas Thomson'),
                          BodyText(text: 'EE987654642'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BodyText(text: 'Lucas Thomson'),
                          BodyText(text: 'EE987654642'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BodyText(text: 'Lucas Thomson'),
                          BodyText(text: 'EE987654642'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BodyText(text: 'Lucas Thomson'),
                          BodyText(text: 'EE987654642'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                BodyText(text: 'DOWNLINE TREE'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UplineWhatsapp extends StatelessWidget {
  const UplineWhatsapp({
    super.key,
    required this.uplineName,
  });

  final String uplineName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: kBgColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            offset: Offset(-2, -2),
            blurRadius: 4,
            color: Color(0xAAFFFFFF),
          ),
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 4,
            color: Color(0x22000000),
          ),
        ],
      ),
      child: Center(
        child: Row(
          children: [
            const FaIcon(
              FontAwesomeIcons.whatsapp,
              size: 22,
              color: Color(0xFF1FAF38),
            ),
            const SizedBox(width: 10),
            BodyText(text: uplineName),
          ],
        ),
      ),
    );
  }
}
