import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_checkbox.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/custom_textfield.dart';
import 'package:divyam_excel/widgets/neu_button_regular.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';

class EditNewspaperScreen extends StatefulWidget {
  const EditNewspaperScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<EditNewspaperScreen> createState() => _EditNewspaperScreenState();
}

class _EditNewspaperScreenState extends State<EditNewspaperScreen> {
  bool metroCityIsChecked = false;
  bool agreeToTermsIsChecked = false;

  final TextEditingController _newspaperNameController =
      TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _uploaderUserIdController =
      TextEditingController();
  final TextEditingController _uploaderMobileController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _newspaperNameController.text = 'The Times of India';
    _addressController.text =
        '1, 136, Dr E Moses Rd, Gandhi Nagar, Upper Worli, Worli, Mumbai, Maharashtra 400018, India';
    _mobileController.text = '9876543210';
    _emailController.text = 'theemail@thewebsite.com';
    _uploaderUserIdController.text = 'MH98765432';
    _uploaderMobileController.text = '9876543210';
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Edit Newspaper',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextInput(
                  controller: _newspaperNameController,
                ),
                const SizedBox(height: 20),
                const BodyText(
                  text: 'Select area of circulation',
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Maharashtra',
                  options: [],
                ),
                const SizedBox(height: 20),
                CustomCheckbox(
                  label: 'Circulation is in a metro city',
                  isChecked: metroCityIsChecked,
                  onChange: () {
                    setState(() {
                      metroCityIsChecked = !metroCityIsChecked;
                    });
                  },
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Mumbai',
                  options: [],
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: _addressController,
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
                            text: 'License photo',
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
                            text: 'Scanned agreement',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          NeuButtonRegular(label: 'Select PDF'),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const BodyText(
                  text:
                      'Enter appropriate information in the agreement, then sign, print and upload it',
                ),
                const SizedBox(height: 20),
                const BodyText(
                  text: 'Download sample agreement',
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _uploaderUserIdController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _uploaderMobileController,
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
                            text: 'Newspaper logo',
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
                CustomCheckbox(
                  label: 'I agree to the Terms & Conditions',
                  isChecked: agreeToTermsIsChecked,
                  onChange: () {
                    setState(() {
                      agreeToTermsIsChecked = !agreeToTermsIsChecked;
                    });
                  },
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
