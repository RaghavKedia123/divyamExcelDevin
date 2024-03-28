import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_bold_regular_text.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/custom_dropdown.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/custom_textfield.dart';
import 'package:divyam_excel/widgets/neu_button_small.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';
import 'package:unicons/unicons.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Contact Us',
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
              SizedBox(width: double.infinity),
              BodyBoldRegularText(
                boldText: 'Sales Helpline: ',
                regularText: '9876543210',
              ),
              SizedBox(height: 20),
              BodyBoldRegularText(
                boldText: 'Network Helpline: ',
                regularText: '9876543210',
              ),
              SizedBox(height: 20),
              BodyBoldRegularText(
                boldText: 'Event Helpline: ',
                regularText: '9876543210',
              ),
              SizedBox(height: 20),
              BodyBoldRegularText(
                boldText: 'Publication Helpline: ',
                regularText: '9876543210',
              ),
              SizedBox(height: 20),
              BodyBoldRegularText(
                boldText: 'Famous Helpline: ',
                regularText: '9876543210',
              ),
              SizedBox(height: 20),
              BodyBoldRegularText(
                boldText: 'Your Location Helpline: ',
                regularText: '9876543210',
              ),
              SizedBox(height: 20),
              BodyBoldRegularText(
                boldText: 'Email: ',
                regularText: '9876543210',
              ),
              SizedBox(height: 20),
              BodyBoldRegularText(
                boldText: 'Email: ',
                regularText: '9876543210',
              ),
              SizedBox(height: 20),
              BodyBoldRegularText(
                boldText: 'Website: ',
                regularText: '9876543210',
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NeuButtonSmall(
                    icon: UniconsLine.whatsapp_alt,
                    iconColor: Color(0xFF1FAF38),
                    buttonSize: 30,
                  ),
                  NeuButtonSmall(
                    icon: UniconsLine.facebook,
                    iconColor: Color(0xFF1877F2),
                    buttonSize: 30,
                  ),
                  NeuButtonSmall(
                    icon: UniconsLine.comment_alt_dots,
                    iconColor: Color(0xFF009688),
                    buttonSize: 30,
                  ),
                  NeuButtonSmall(
                    icon: UniconsLine.instagram_alt,
                    iconColor: Color(0xFFFF543E),
                    buttonSize: 30,
                  ),
                  NeuButtonSmall(
                    icon: UniconsLine.youtube,
                    iconColor: Color(0xFFFF0000),
                    buttonSize: 30,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BodyText(
                    text: 'Read FAQs before you ask for help',
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ],
              ),
              SizedBox(height: 30),
              BodyText(
                  text:
                      'Note: For any issues related to the app, raise a ticket.'),
              SizedBox(height: 20),
              CustomDropdown(
                selectLabel: 'Purpose',
                options: [],
              ),
              SizedBox(height: 20),
              CustomTextInput(hintText: 'Topic of your query'),
              SizedBox(height: 20),
              CustomTextField(hintText: 'Details of your query'),
              SizedBox(height: 30),
              CustomSubmitButton(buttonText: 'Submit Query'),
            ],
          ),
        ),
      ),
    );
  }
}
