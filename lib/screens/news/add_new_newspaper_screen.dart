import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_checkbox.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/custom_textfield.dart';
import 'package:divyam_excel/widgets/upload_button_with_note.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';

class AddNewNewspaperScreen extends StatefulWidget {
  const AddNewNewspaperScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<AddNewNewspaperScreen> createState() => _AddNewNewspaperScreenState();
}

class _AddNewNewspaperScreenState extends State<AddNewNewspaperScreen> {
  bool metroCityIsChecked = false;
  bool agreeToTermsIsChecked = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Add New Newspaper',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomTextInput(hintText: 'Name of newspaper'),
                const SizedBox(height: 20),
                const BodyText(
                  text: 'Select area of circulation',
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'State',
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
                  selectLabel: 'District/Metro city',
                  options: [],
                ),
                const SizedBox(height: 20),
                const CustomTextField(hintText: 'Registered address'),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Registered contact number'),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Registered email address'),
                const SizedBox(height: 20),
                const UploadButtonWithNote(
                  noteText: 'Upload license photo',
                  buttonText: 'Select image',
                ),
                const SizedBox(height: 20),
                const UploadButtonWithNote(
                    noteText:
                        'Enter appropriate information in the agreement, then sign, print and upload it',
                    buttonText: 'Select PDF'),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Expanded(
                      child: BodyText(
                        text: 'Download sample agreement',
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
                const SizedBox(height: 20),
                const CustomTextInput(
                    hintText: 'User ID of authorized uploader'),
                const SizedBox(height: 20),
                const CustomTextInput(
                    hintText: 'Mobile of authorized uploader'),
                const SizedBox(height: 20),
                const UploadButtonWithNote(
                  noteText: 'Upload newspaper logo',
                  buttonText: 'Select image',
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
                const CustomSubmitButton(buttonText: 'Submit'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
