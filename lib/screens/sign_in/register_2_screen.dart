import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_checkbox.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/date_input.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';

class Register2Screen extends StatefulWidget {
  const Register2Screen({super.key});

  @override
  State<Register2Screen> createState() => _Register2ScreenState();
}

class _Register2ScreenState extends State<Register2Screen> {
  bool metroCityIsChecked = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: const CustomAppBar(titleText: 'Register 2/3'),
      body: MainContainer(
        childWidget: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: screenWidth * 0.1,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CustomTextInput(hintText: 'First name'),
              const SizedBox(height: 20),
              const CustomTextInput(hintText: 'Last name'),
              const SizedBox(height: 20),
              const DateInput(hintText: 'Date of birth'),
              const SizedBox(height: 20),
              const CustomDropdown(
                selectLabel: 'Sex',
                options: [
                  {'male': 'Male'},
                  {'female': 'Female'},
                ],
              ),
              const SizedBox(height: 20),
              const CustomDropdown(
                selectLabel: 'State',
                options: [
                  {'andhraPradesh': 'Andhra Pradesh'},
                  {'gujarat': 'Gujarat'},
                  {'madhyaPradesh': 'Madhya Pradesh'},
                  {'maharashtra': 'Maharatshtra'},
                  {'rajasthan': 'Rajasthan'},
                  {'Uttar Pradesh': 'Uttar Pradesh'},
                  {'westBengal': 'West Bengal'},
                ],
              ),
              const SizedBox(height: 20),
              CustomCheckbox(
                label: 'I live in a metro city',
                isChecked: metroCityIsChecked,
                onChange: () {
                  setState(() {
                    metroCityIsChecked = !metroCityIsChecked;
                  });
                },
              ),
              const SizedBox(height: 20),
              const CustomDropdown(
                selectLabel: 'District',
                options: [],
              ),
              const SizedBox(height: 20),
              const CustomDropdown(
                selectLabel: 'Taluka',
                options: [],
              ),
              const SizedBox(height: 20),
              const CustomTextInput(hintText: 'PIN code'),
              const SizedBox(height: 30),
              const CustomSubmitButton(buttonText: 'Next'),
            ],
          ),
        ),
      ),
    );
  }
}
