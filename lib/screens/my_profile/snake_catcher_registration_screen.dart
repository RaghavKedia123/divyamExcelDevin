import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class SnakeCatcherRegistrationScreen extends StatefulWidget {
  const SnakeCatcherRegistrationScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<SnakeCatcherRegistrationScreen> createState() =>
      _SnakeCatcherRegistrationScreenState();
}

class _SnakeCatcherRegistrationScreenState
    extends State<SnakeCatcherRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Snake Catcher',
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
                SizedBox(height: 30),
                CustomSubmitButton(buttonText: 'Register as Snake Catcher'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
