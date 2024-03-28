import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_dropdown.dart';
import 'package:divyam_excel/widgets/custom_textfield.dart';
import 'package:divyam_excel/widgets/upload_button_with_note.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class OpenNewTicketScreen extends StatefulWidget {
  const OpenNewTicketScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<OpenNewTicketScreen> createState() => _OpenNewTicketScreenState();
}

class _OpenNewTicketScreenState extends State<OpenNewTicketScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Open New Ticket',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: screenWidth * 0.1,
            ),
            child: const Column(
              children: [
                CustomDropdown(
                  selectLabel: 'Select department',
                  options: [],
                ),
                SizedBox(height: 20),
                CustomTextInput(hintText: 'What\'s your issue about?'),
                SizedBox(height: 20),
                CustomTextField(hintText: 'Details of your issue'),
                SizedBox(height: 20),
                UploadButtonWithNote(
                    noteText: 'Attach image', buttonText: 'Select image'),
                SizedBox(height: 30),
                CustomSubmitButton(buttonText: 'Open Tikcet'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
