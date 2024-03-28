import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_checkbox.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';
import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/custom_textfield.dart';
import 'package:divyam_excel/widgets/neu_button_regular.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';

class EditEventScreen extends StatefulWidget {
  const EditEventScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<EditEventScreen> createState() => _EditEventScreenState();
}

class _EditEventScreenState extends State<EditEventScreen> {
  bool paidEventIsChecked = false;
  bool metroCityIsChecked = false;

  final TextEditingController _eventTitleController = TextEditingController();
  final TextEditingController _startDateTimeController =
      TextEditingController();
  final TextEditingController _endDateTimeController = TextEditingController();
  final TextEditingController _organizerController = TextEditingController();
  final TextEditingController _chiefGuestController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _venueController = TextEditingController();
  final TextEditingController _contactDetailsController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _eventTitleController.text = 'Mumbai Jazz Festival - 2023';
    _startDateTimeController.text = '12-12-2023 06:30 PM';
    _endDateTimeController.text = '18-12-2023 09:30 PM';
    _organizerController.text = 'Lions Club Lower Parel';
    _chiefGuestController.text = 'Hon. Dr. Arvind Suradkar';
    _descriptionController.text = 'This is a very long description';
    _venueController.text = 'Phoenix Palladium, Lower Parel, Mumbai';
    _contactDetailsController.text =
        'ABC Mart, Ghatpuri Road, 987654310\nXYZ Office, Balaji Plots, 9876543210';
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Edit Event',
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
                  controller: _eventTitleController,
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Music Show',
                  options: [],
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Marathi',
                  options: [],
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _startDateTimeController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _endDateTimeController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _organizerController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _chiefGuestController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: _descriptionController,
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
                    const SizedBox(width: 10),
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
                const SizedBox(height: 10),
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
                            text: 'Change images\n(max 3)',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          NeuButtonRegular(label: 'Select images'),
                        ],
                      ),
                    ),
                  ],
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
                  selectLabel: 'Maharashtra',
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
                  selectLabel: 'Mumbai',
                  options: [],
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Lower Parel',
                  options: [],
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: _venueController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: _contactDetailsController,
                ),
                const SizedBox(height: 30),
                const CustomSubmitButton(buttonText: 'Update'),
                const SizedBox(height: 30),
                const CustomTextButton(buttonText: '< GO BACK'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
