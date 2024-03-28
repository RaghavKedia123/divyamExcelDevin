import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class BloodDonorRegistrationScreen extends StatefulWidget {
  const BloodDonorRegistrationScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<BloodDonorRegistrationScreen> createState() =>
      _BloodDonorRegistrationScreenState();
}

class _BloodDonorRegistrationScreenState
    extends State<BloodDonorRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Blood Donor',
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
                Row(
                  children: [
                    BodyText(text: 'Name: ', fontWeight: FontWeight.w600),
                    BodyText(text: 'Arvind Suradkar'),
                  ],
                ),
                SizedBox(height: 20),
                CustomDropdown(selectLabel: 'Select mobile', options: []),
                SizedBox(height: 20),
                Row(
                  children: [
                    BodyText(text: 'Location: ', fontWeight: FontWeight.w600),
                    BodyText(text: 'Khamgaon'),
                  ],
                ),
                SizedBox(height: 20),
                CustomDropdown(selectLabel: 'Blood group', options: []),
                SizedBox(height: 30),
                CustomSubmitButton(buttonText: 'Register as Blood Donor'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
