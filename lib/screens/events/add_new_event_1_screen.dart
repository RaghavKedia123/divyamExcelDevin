import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_textfield.dart';
import 'package:divyam_excel/widgets/upload_button_with_note.dart';
import 'package:divyam_excel/widgets/custom_checkbox.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';

class AddNewEvent1Screen extends StatefulWidget {
  const AddNewEvent1Screen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<AddNewEvent1Screen> createState() => _AddNewEvent1ScreenState();
}

class _AddNewEvent1ScreenState extends State<AddNewEvent1Screen> {
  bool downlineEventIsChecked = false;
  bool paidEventIsChecked = false;
  bool metroCityIsChecked = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Add New Event',
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
                CustomCheckbox(
                  label: 'This event is for MLM downline',
                  isChecked: downlineEventIsChecked,
                  onChange: () {
                    setState(() {
                      downlineEventIsChecked = !downlineEventIsChecked;
                    });
                  },
                ),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Event title'),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Event category',
                  options: [],
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Language',
                  options: [],
                ),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Start date & time'),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'End date & time'),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Organizer'),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Chief guest'),
                const SizedBox(height: 20),
                const CustomTextField(hintText: 'Description'),
                const SizedBox(height: 20),
                const UploadButtonWithNote(
                  noteText: 'Add images (max 3)',
                  buttonText: 'Select images',
                ),
                const SizedBox(height: 20),
                CustomCheckbox(
                  label: 'This is a paid event',
                  isChecked: paidEventIsChecked,
                  onChange: () {
                    setState(() {
                      paidEventIsChecked = !paidEventIsChecked;
                    });
                  },
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'State',
                  options: [],
                ),
                const SizedBox(height: 20),
                CustomCheckbox(
                  label: 'This event is in a metro city',
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
                const CustomTextField(hintText: 'Venue'),
                const SizedBox(height: 20),
                const CustomTextField(hintText: 'Contact information'),
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
