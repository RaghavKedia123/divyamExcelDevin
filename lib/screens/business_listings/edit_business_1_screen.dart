import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/custom_checkbox.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/custom_textfield.dart';
import 'package:divyam_excel/widgets/neu_button_regular.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';

class EditBusiness1Screen extends StatefulWidget {
  const EditBusiness1Screen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<EditBusiness1Screen> createState() => _EditBusiness1ScreenState();
}

class _EditBusiness1ScreenState extends State<EditBusiness1Screen> {
  bool? metroCityIsChecked;

  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contactPersonController =
      TextEditingController();
  final TextEditingController _websiteUrlController = TextEditingController();
  final TextEditingController _whatsappController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _pinController = TextEditingController();

  @override
  void initState() {
    super.initState();
    metroCityIsChecked = false;

    _businessNameController.text = 'Didwaniya Super Bazar';
    _mobileController.text = '9876543210';
    _emailController.text = 'dushyant_kedia@rediffmail.com';
    _contactPersonController.text = 'Arvind Suradkar';
    _websiteUrlController.text = 'http://mywebsite.com';
    _whatsappController.text = '9876543210';
    _addressController.text = 'Balaji Plots\nKhamgaon';
    _pinController.text = '444303';
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Edit Business',
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
                  controller: _businessNameController,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BodyText(
                            text: 'Change logo image',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          NeuButtonRegular(label: 'Select image'),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _mobileController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _emailController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _contactPersonController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _websiteUrlController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _whatsappController,
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Maharashtra',
                  options: [],
                ),
                const SizedBox(height: 20),
                CustomCheckbox(
                  label: 'Business is located in a metro city',
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
                CustomTextField(
                  controller: _addressController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _pinController,
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          BodyText(
                            text: '10:00 AM',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 5),
                          BodyText(
                            text: 'Select Time',
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          BodyText(
                            text: '09:00 PM',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 5),
                          BodyText(
                            text: 'Select Time',
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const CustomSubmitButton(buttonText: 'Next'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
