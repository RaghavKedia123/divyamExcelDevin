import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/custom_textfield.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/neu_button_regular.dart';

class EditFamousScreen extends StatefulWidget {
  const EditFamousScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<EditFamousScreen> createState() => _EditFamousScreenState();
}

class _EditFamousScreenState extends State<EditFamousScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _titleController.text = 'Happy Birthday Amit!';
    _descriptionController.text =
        'Wish you many many happy returns of the day!';
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Edit Famous',
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
                  controller: _titleController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: _descriptionController,
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
                            text: 'Change famous image',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          NeuButtonRegular(label: 'Select image'),
                        ],
                      ),
                    ),
                  ],
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
