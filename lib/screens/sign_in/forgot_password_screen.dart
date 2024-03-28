import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/custom_divider.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/widgets/custom_radio_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  List<String> recoveryOptions = [
    'mobile1',
    'mobile2',
    'email',
  ];

  String? selectedOption;

  @override
  void initState() {
    super.initState();
    selectedOption = recoveryOptions[0];
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: const CustomAppBar(titleText: 'Forgot Password'),
      body: MainContainer(
        childWidget: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: screenWidth * 0.1,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomRadioButton(
                label: 'Send OTP on mobile ******9771',
                value: recoveryOptions[0],
                groupValue: selectedOption,
                onChange: () {
                  setState(() {
                    selectedOption = recoveryOptions[0];
                  });
                },
              ),
              const SizedBox(height: 20),
              CustomRadioButton(
                label: 'Send OTP on mobile ******3876',
                value: recoveryOptions[1],
                groupValue: selectedOption,
                onChange: () {
                  setState(() {
                    selectedOption = recoveryOptions[1];
                  });
                },
              ),
              const SizedBox(height: 20),
              CustomRadioButton(
                label: 'Send OTP on email ya************@gmail.com',
                value: recoveryOptions[2],
                groupValue: selectedOption,
                onChange: () {
                  setState(() {
                    selectedOption = recoveryOptions[2];
                  });
                },
              ),
              const SizedBox(height: 30),
              const CustomSubmitButton(buttonText: 'Get OTP'),
              const SizedBox(height: 30),
              const CustomDivider(),
              const SizedBox(height: 30),
              const CustomTextButton(buttonText: 'Sign In'),
            ],
          ),
        ),
      ),
    );
  }
}
