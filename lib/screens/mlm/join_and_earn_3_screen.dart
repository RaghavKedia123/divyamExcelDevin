import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/widgets/custom_checkbox.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/upload_button_with_note.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class JoinAndEarn3Screen extends StatefulWidget {
  const JoinAndEarn3Screen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<JoinAndEarn3Screen> createState() => _JoinAndEarn3ScreenState();
}

class _JoinAndEarn3ScreenState extends State<JoinAndEarn3Screen> {
  bool termsConditionsIsChecked = false;

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
              horizontal: screenWidth * 0.1,
            ),
            child: Column(
              children: [
                const CustomDropdown(
                  selectLabel: 'Select card',
                  options: [],
                ),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Card number'),
                const SizedBox(height: 20),
                const UploadButtonWithNote(
                  noteText: 'Image of the selected card',
                  buttonText: 'Selet image',
                ),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Enter OTP'),
                const SizedBox(height: 20),
                CustomCheckbox(
                  label: 'I agree to the Terms & Conditions',
                  isChecked: termsConditionsIsChecked,
                  onChange: () {
                    setState(() {
                      termsConditionsIsChecked = !termsConditionsIsChecked;
                    });
                  },
                ),
                const SizedBox(height: 30),
                const CustomSubmitButton(
                    buttonText: 'Become Business Associate 4 Free'),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    BodyText(
                      text: 'Terms & Conditions',
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const CustomTextButton(buttonText: '< GO BACK')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
