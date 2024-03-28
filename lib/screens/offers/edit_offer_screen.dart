import 'package:flutter/material.dart';

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

class EditOfferScreen extends StatefulWidget {
  const EditOfferScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<EditOfferScreen> createState() => _EditOfferScreenState();
}

class _EditOfferScreenState extends State<EditOfferScreen> {
  final TextEditingController _offerTitleController = TextEditingController();
  final TextEditingController _offerDescriptionController =
      TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _offerTitleController.text = '50% off on branded items';
    _offerDescriptionController.text =
        'We are offering 50% off on a range of branded products! Hurry! Offer only for limited period.';
    _startDateController.text = '12-12-2023';
    _endDateController.text = '18-12-2023';
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Edit Offer',
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
                  selectLabel: 'Dhruv Super Market',
                  options: [],
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Regular B2C',
                  options: [],
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _offerTitleController,
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
                            text: 'Change image\n(ideal resolution 700x700 px)',
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
                CustomTextField(
                  controller: _offerDescriptionController,
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Food',
                  options: [],
                ),
                const SizedBox(height: 20),
                // TODO: add "Target all ages" checkbox
                const Row(
                  children: [
                    Expanded(
                      child: CustomDropdown(
                        selectLabel: 'From age',
                        options: [],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: CustomDropdown(
                        selectLabel: 'From to',
                        options: [],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const CustomDropdown(
                  selectLabel: 'Female',
                  options: [],
                ),
                const SizedBox(height: 20),
                // TODO: add "Select target location" fields
                CustomTextInput(
                  controller: _startDateController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _endDateController,
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
