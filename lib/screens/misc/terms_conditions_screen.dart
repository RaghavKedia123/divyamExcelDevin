import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class TermsConditionsScreen extends StatefulWidget {
  const TermsConditionsScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<TermsConditionsScreen> createState() => _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Terms & Conditions',
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
              SizedBox(
                width: double.infinity,
              ),
              BodyText(
                text: 'User Terms & Conditions',
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),
              SizedBox(height: 20),
              BodyText(
                text: 'Seller Terms & Conditions',
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),
              SizedBox(height: 20),
              BodyText(
                text: 'Publisher Terms & Conditions',
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),
              SizedBox(height: 20),
              BodyText(
                text: 'MLM Associate Terms & Conditions',
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),
              SizedBox(height: 20),
              BodyText(
                text: 'Privacy Policy',
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),
              SizedBox(height: 20),
              BodyText(
                text: 'Copyright Information',
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
