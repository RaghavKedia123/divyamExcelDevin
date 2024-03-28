import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_checkbox.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';

class EditBasicDetailsScreen extends StatefulWidget {
  const EditBasicDetailsScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<EditBasicDetailsScreen> createState() => _EditBasicDetailsScreenState();
}

class _EditBasicDetailsScreenState extends State<EditBasicDetailsScreen> {
  bool? metroCityIsChecked;

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _pinController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    metroCityIsChecked = false;

    _firstNameController.text = 'Arvind';
    _lastNameController.text = 'Suradkar';
    _dobController.text = '10-12-1980';
    _pinController.text = '444303';
    _mobileController.text = '9876543210';
    _emailController.text = 'suradkararvind@rediffmail.com';
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Edit Profile',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      body: MainContainer(
        childWidget: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: screenWidth * 0.1,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextInput(
                  controller: _firstNameController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _lastNameController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _dobController,
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Male',
                  options: [
                    {'male': 'Male'},
                    {'female': 'Female'},
                  ],
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Maharashtra',
                  options: [],
                ),
                const SizedBox(height: 20),
                CustomCheckbox(
                  label: 'I live in a metro city',
                  isChecked: metroCityIsChecked!,
                  onChange: () {
                    setState(() {
                      metroCityIsChecked = !metroCityIsChecked!;
                    });
                  },
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Buldhana',
                  options: [],
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Khamgaon',
                  options: [],
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _pinController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _mobileController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _emailController,
                ),
                const SizedBox(height: 30),
                const CustomSubmitButton(buttonText: 'Update'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
