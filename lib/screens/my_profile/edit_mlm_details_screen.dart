import 'package:divyam_excel/widgets/body_text.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';

class EditMlmDetailsScreen extends StatefulWidget {
  const EditMlmDetailsScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<EditMlmDetailsScreen> createState() => _EditMlmDetailsScreenState();
}

class _EditMlmDetailsScreenState extends State<EditMlmDetailsScreen> {
  final TextEditingController _whatsappGroupLinkController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _whatsappGroupLinkController.text = 'https://tinyurl.com/wp-tinyurl';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    BodyText(text: 'AADHAAR number'),
                    SizedBox(width: 10),
                    BodyText(text: '8888 8888 8888'),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 120,
                  width: 200,
                  color: Colors.black12,
                ),
                const SizedBox(height: 20),
                const BodyText(text: 'WhatsApp group link'),
                const SizedBox(height: 5),
                CustomTextInput(
                  controller: _whatsappGroupLinkController,
                ),
                const SizedBox(height: 30),
                const CustomSubmitButton(buttonText: 'Update'),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
