import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/widgets/custom_divider.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/heading_2_text.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: "Sign In",
      ),
      body: MainContainer(
        childWidget: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: screenWidth * 0.1,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextButton(
                    buttonText: "Select Language",
                  ),
                  const SizedBox(width: 5),
                  const Icon(
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
              const SizedBox(height: 20),
              CustomTextInput(
                hintText: "Mobile",
              ),
              const SizedBox(height: 20),
              CustomTextInput(
                hintText: "Password",
              ),
              const SizedBox(height: 30),
              CustomSubmitButton(
                buttonText:
                    "Sign In",
              ),
              const SizedBox(height: 30),
              CustomTextButton(
                buttonText: "Forgot Password",
              ),
              const SizedBox(height: 30),
              const CustomDivider(),
              const SizedBox(height: 30),
              Heading2Text(
                text: "Start for Free",
              ),
              const SizedBox(height: 5),
              CustomTextButton(
                buttonText: "Create new Account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
