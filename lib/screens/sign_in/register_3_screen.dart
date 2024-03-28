import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/note_text.dart';

class Register3Screen extends StatelessWidget {
  const Register3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: const CustomAppBar(titleText: 'Register 3/3'),
      body: MainContainer(
        childWidget: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: screenWidth * 0.1,
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              NoteText(
                  text:
                      'Secondary mobile and email are useful in case you lose access to primary mobile number'),
              SizedBox(height: 20),
              CustomTextInput(hintText: 'Password'),
              SizedBox(height: 20),
              CustomTextInput(hintText: 'Confirm password'),
              SizedBox(height: 20),
              CustomTextInput(hintText: 'Seondary mobile (optional)'),
              SizedBox(height: 20),
              CustomTextInput(hintText: 'Email (optional)'),
              SizedBox(height: 30),
              CustomSubmitButton(buttonText: 'Register'),
            ],
          ),
        ),
      ),
    );
  }
}
