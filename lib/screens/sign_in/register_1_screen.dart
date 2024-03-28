import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import 'package:divyam_excel/widgets/note_text.dart';
import 'package:divyam_excel/widgets/heading_2_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/custom_divider.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';

class Register1Screen extends StatelessWidget {
  const Register1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: const CustomAppBar(titleText: 'Register 1/3'),
      body: MainContainer(
        childWidget: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: screenWidth * 0.1,
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextButton(buttonText: 'Select Language'),
                  SizedBox(width: 5),
                  Icon(
                    UniconsLine.language,
                    size: 28,
                    color: kPrimaryColor,
                    shadows: [
                      BoxShadow(
                        color: Color(0x28000000),
                        offset: Offset(1.3, 1.3),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Heading2Text(text: 'Start for free'),
              SizedBox(height: 30),
              NoteText(
                text:
                    'Note: This mobile number cannot be changed once verified by OTP',
              ),
              SizedBox(height: 20),
              CustomTextInput(hintText: 'Mobile (+91)'),
              SizedBox(height: 20),
              CustomTextInput(hintText: 'Referral code / Referrer mobile'),
              SizedBox(height: 30),
              CustomSubmitButton(buttonText: 'Get OTP'),
              SizedBox(height: 30),
              CustomDivider(),
              SizedBox(height: 30),
              CustomTextButton(buttonText: 'Sign In'),
            ],
          ),
        ),
      ),
    );
  }
}
