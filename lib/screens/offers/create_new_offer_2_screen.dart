import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/widgets/upload_button_with_note.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';

class CreateNewOffer2Screen extends StatefulWidget {
  const CreateNewOffer2Screen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<CreateNewOffer2Screen> createState() => _CreateNewOffer2ScreenState();
}

class _CreateNewOffer2ScreenState extends State<CreateNewOffer2Screen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Create New Offer',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      body: MainContainer(
        childWidget: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: screenWidth * 0.1,
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                UploadButtonWithNote(
                  noteText: 'Ideal resolution for image is 700x700 px',
                  buttonText: 'Select image',
                ),
                SizedBox(height: 20),
                CustomDropdown(
                  selectLabel: 'Category level 3',
                  options: [],
                ),
                SizedBox(height: 20),
                // CustomRadioButton(label: 'Product 1'),
                // SizedBox(height: 20),
                // CustomRadioButton(label: 'Product 2'),
                // SizedBox(height: 20),
                // CustomRadioButton(label: 'Product 3'),
                // SizedBox(height: 20),
                // CustomRadioButton(label: 'Product 4'),
                // SizedBox(height: 20),
                CustomTextInput(hintText: 'Product name'),
                SizedBox(height: 20),
                CustomTextInput(hintText: 'Original price'),
                SizedBox(height: 20),
                CustomTextInput(hintText: 'Offer price'),
                SizedBox(height: 30),
                CustomSubmitButton(buttonText: 'Next'),
                SizedBox(height: 30),
                Center(
                  child: CustomTextButton(buttonText: '< GO BACK'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
