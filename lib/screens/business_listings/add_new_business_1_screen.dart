import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/custom_textfield.dart';
import 'package:divyam_excel/widgets/upload_button_with_note.dart';
import 'package:divyam_excel/widgets/custom_checkbox.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';

class AddNewBusiness1Screen extends StatefulWidget {
  const AddNewBusiness1Screen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<AddNewBusiness1Screen> createState() => _AddNewBusiness1ScreenState();
}

class _AddNewBusiness1ScreenState extends State<AddNewBusiness1Screen> {
  bool? metroCityIsChecked;

  @override
  void initState() {
    super.initState();
    metroCityIsChecked = false;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Add New Business',
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
                const CustomTextInput(hintText: 'Name of business'),
                const SizedBox(height: 20),
                const UploadButtonWithNote(
                  noteText: 'Upload logo image\nIdeal resolution 50x50 px',
                  buttonText: 'Select image',
                ),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Mobile'),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Email'),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Contact person'),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Website URL (optional)'),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'WhatsApp number (optional)'),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'State',
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
                  selectLabel: 'District',
                  options: [],
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Taluka',
                  options: [],
                ),
                const SizedBox(height: 20),
                const CustomTextField(hintText: 'Registered address'),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'PIN code'),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Google Map link'),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          BodyText(
                            text: 'Opening Time\n(Optional)',
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
                            text: 'Closing Time\n(Optional)',
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
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Level 1 category',
                  options: [],
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Level 2 category',
                  options: [],
                ),
                const SizedBox(height: 20),
                // TODO: create and implement checkbox logic manually
                // CustomCheckbox(
                //   label: 'Banking',
                //   isChecked: false,
                // ),
                // SizedBox(height: 20),
                // TODO: create and implement checkbox logic manually
                // CustomCheckbox(
                //   label: 'investment',
                //   isChecked: false,
                // ),
                // SizedBox(height: 20),
                // TODO: create and implement checkbox logic manually
                // CustomCheckbox(
                //   label: 'Insurance',
                //   isChecked: false,
                // ),
                // SizedBox(height: 20),
                // TODO: create and implement checkbox logic manually
                // CustomCheckbox(
                //   label: 'Financial planning and advisory',
                //   isChecked: false,
                // ),
                // SizedBox(height: 20),
                // TODO: create and implement checkbox logic manually
                // CustomCheckbox(
                //   label: 'Share trading',
                //   isChecked: false,
                // ),
                // SizedBox(height: 20),
                const UploadButtonWithNote(
                  noteText: 'Add primary image',
                  buttonText: 'Select image',
                ),
                const SizedBox(height: 20),
                const UploadButtonWithNote(
                  noteText: 'Add secondary images (max 2)',
                  buttonText: 'Select images',
                ),
                const SizedBox(height: 30),
                const CustomSubmitButton(buttonText: 'Submit'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
