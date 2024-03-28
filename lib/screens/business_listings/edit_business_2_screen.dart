import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/custom_checkbox.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/neu_button_regular.dart';
import 'package:divyam_excel/widgets/upload_button_with_note.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';

class EditBusiness2Screen extends StatefulWidget {
  const EditBusiness2Screen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<EditBusiness2Screen> createState() => _EditBusiness2ScreenState();
}

class _EditBusiness2ScreenState extends State<EditBusiness2Screen> {
  bool? bankingIsChecked;
  bool? investmentIsChecked;
  bool? insuranceIsChecked;

  @override
  void initState() {
    super.initState();
    bankingIsChecked = false;
    investmentIsChecked = false;
    insuranceIsChecked = false;
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
                const CustomDropdown(
                  selectLabel: 'Finance',
                  options: [],
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Share Trading',
                  options: [],
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Generic',
                  options: [],
                ),
                const SizedBox(height: 20),
                CustomCheckbox(
                  label: 'Banking',
                  isChecked: bankingIsChecked!,
                  onChange: () {
                    setState(() {
                      bankingIsChecked = !bankingIsChecked!;
                    });
                  },
                ),
                const SizedBox(height: 20),
                CustomCheckbox(
                  label: 'Investment',
                  isChecked: investmentIsChecked!,
                  onChange: () {
                    setState(() {
                      investmentIsChecked = !investmentIsChecked!;
                    });
                  },
                ),
                const SizedBox(height: 20),
                CustomCheckbox(
                  label: 'Insurance',
                  isChecked: insuranceIsChecked!,
                  onChange: () {
                    setState(() {
                      insuranceIsChecked = !insuranceIsChecked!;
                    });
                  },
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
                            text: 'Change primary image',
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
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const UploadButtonWithNote(
                  noteText: 'Change secondary images (max 2)',
                  buttonText: 'Select images',
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
