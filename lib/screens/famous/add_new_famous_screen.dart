import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_textfield.dart';
import 'package:divyam_excel/widgets/upload_button_with_note.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';

class AddNewFamousScreen extends StatefulWidget {
  const AddNewFamousScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<AddNewFamousScreen> createState() => _AddNewFamousScreenState();
}

class _AddNewFamousScreenState extends State<AddNewFamousScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Add New Famous',
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
                CustomTextInput(hintText: 'Famous title'),
                SizedBox(height: 20),
                CustomTextField(hintText: 'Description'),
                SizedBox(height: 20),
                UploadButtonWithNote(
                  noteText: 'Famous image',
                  buttonText: 'Select image',
                ),
                SizedBox(height: 30),
                CustomSubmitButton(buttonText: 'Submit'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
