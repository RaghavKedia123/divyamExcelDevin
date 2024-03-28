import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_checkbox.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/custom_textfield.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';

class CreateNewOffer1Screen extends StatefulWidget {
  const CreateNewOffer1Screen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<CreateNewOffer1Screen> createState() => _CreateNewOffer1ScreenState();
}

class _CreateNewOffer1ScreenState extends State<CreateNewOffer1Screen> {
  bool targetAllAgesIsSelected = false;

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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomDropdown(
                  selectLabel: 'Business listing name',
                  options: [],
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Offer type',
                  options: [],
                ),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Offer title'),
                const SizedBox(height: 20),
                const CustomTextField(hintText: 'Offer description'),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BodyText(
                      text: '+ Add language',
                      fontWeight: FontWeight.w500,
                      color: kPrimaryColor,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Product category',
                  options: [],
                ),
                const SizedBox(height: 20),
                CustomCheckbox(
                  label: 'I live in a metro city',
                  isChecked: targetAllAgesIsSelected,
                  onChange: () {
                    setState(() {
                      targetAllAgesIsSelected = !targetAllAgesIsSelected;
                    });
                  },
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Expanded(
                      child: CustomDropdown(
                        selectLabel: 'From age',
                        options: [],
                      ),
                    ),
                    VerticalDivider(width: 10),
                    Expanded(
                      child: CustomDropdown(
                        selectLabel: 'To age',
                        options: [],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Target sex',
                  options: [],
                ),
                const SizedBox(height: 20),
                // CustomCheckbox(label: 'All India'),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Start date'),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'End date'),
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
