import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_bold_regular_text.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_textfield.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class ReportFormScreen extends StatefulWidget {
  const ReportFormScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<ReportFormScreen> createState() => _ReportFormScreenState();
}

class _ReportFormScreenState extends State<ReportFormScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Report Form',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: screenWidth * 0.1,
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BodyBoldRegularText(
                boldText: 'Complain about: ',
                regularText: 'Event',
              ),
              SizedBox(height: 20),
              BodyBoldRegularText(
                boldText: 'Item title: ',
                regularText: 'Mumbai Jazz Festival - 2023',
              ),
              SizedBox(height: 20),
              CustomDropdown(
                selectLabel: 'Select type of complaint',
                options: [],
              ),
              SizedBox(height: 20),
              CustomTextField(hintText: 'Complaint description'),
              SizedBox(height: 30),
              CustomSubmitButton(buttonText: 'Submit Complaint'),
            ],
          ),
        ),
      ),
    );
  }
}
