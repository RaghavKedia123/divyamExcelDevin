import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';

class EditSecondaryContactInfoScreen extends StatefulWidget {
  const EditSecondaryContactInfoScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<EditSecondaryContactInfoScreen> createState() =>
      _EditSecondaryContactInfoScreenState();
}

class _EditSecondaryContactInfoScreenState
    extends State<EditSecondaryContactInfoScreen> {
  final TextEditingController _secondaryMobileController =
      TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _secondaryMobileController.text = '9876543210';
    _emailController.text = 'arvindsuradkar@gmail.com';
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Edit Profile',
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
                  controller: _secondaryMobileController,
                ),
                const SizedBox(height: 30),
                const CustomSubmitButton(buttonText: 'Get OTP'),
                const SizedBox(height: 30),
                CustomTextInput(
                  controller: _emailController,
                ),
                const SizedBox(height: 30),
                const CustomSubmitButton(buttonText: 'Get Verification Link'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
