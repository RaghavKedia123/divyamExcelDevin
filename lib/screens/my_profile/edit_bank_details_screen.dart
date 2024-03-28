import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/neu_button_regular.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';

class EditBankDetailsScreen extends StatefulWidget {
  const EditBankDetailsScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<EditBankDetailsScreen> createState() => _EditBankDetailsScreenState();
}

class _EditBankDetailsScreenState extends State<EditBankDetailsScreen> {
  final TextEditingController _panNumberController = TextEditingController();
  final TextEditingController _bankAccountNameController =
      TextEditingController();
  final TextEditingController _bankAccountNumberController =
      TextEditingController();
  final TextEditingController _confirmBankAccountNumberController =
      TextEditingController();
  final TextEditingController _ifsCodeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _panNumberController.text = 'AFZPK7190K';
    _bankAccountNameController.text = 'Arvind Suradkar';
    _bankAccountNumberController.text = '**********';
    _confirmBankAccountNumberController.text = '31969292728';
    _ifsCodeController.text = 'SBIN0003282';
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
                const BodyText(
                  text: 'PAN card number',
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(height: 5),
                CustomTextInput(
                  controller: _panNumberController,
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
                            text: 'Change card image',
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
                CustomTextInput(
                  controller: _bankAccountNameController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _bankAccountNumberController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _confirmBankAccountNumberController,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  controller: _ifsCodeController,
                ),
                const SizedBox(height: 30),
                const CustomSubmitButton(buttonText: 'Update'),
                const SizedBox(height: 30),
                SeparatedColumn(
                  separatorBuilder: () => const SizedBox(height: 10),
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    BodyText(
                      text: 'Notes',
                      fontWeight: FontWeight.w600,
                    ),
                    BodyText(
                        text:
                            'Once submitted, this information will be verified.'),
                    BodyText(
                        text:
                            'No payment will be given until the verification is completed or if the information is wrong.'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
