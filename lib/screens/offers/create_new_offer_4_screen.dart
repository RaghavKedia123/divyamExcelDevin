import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';

class CreateNewOffer4Screen extends StatefulWidget {
  const CreateNewOffer4Screen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<CreateNewOffer4Screen> createState() => _CreateNewOffer4ScreenState();
}

class _CreateNewOffer4ScreenState extends State<CreateNewOffer4Screen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Create New Offer',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      body: MainContainer(
        childWidget: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: screenWidth * 0.1,
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextInput(hintText: 'Max Recharge Coins to be spent'),
                SizedBox(height: 30),
                BodyText(
                  text: 'Available Recharge Coins Balance',
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 10),
                BodyText(
                  text: '1000',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 30),
                CustomTextButton(buttonText: 'GET MORE RECHARGE COINS'),
                SizedBox(height: 10),
                BodyText(
                  text: '(1 Recharge Coin = 1 ₹)',
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 30),
                BodyText(
                  text: 'Available Bonus Diamonds',
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 10),
                BodyText(
                  text: '1500',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 30),
                CustomTextButton(
                    buttonText: 'CONVERT BONUS DIAMONDS TO RECHARGE COINS'),
                SizedBox(height: 30),
                BodyText(
                  text: '(1 Bonus Diamond = 1 Recharge Coin)',
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 30),
                BodyText(
                  text:
                      'Note: If you want to set different views for different locations, you can create multiple ad campaigns with same content.\nGo to My Offers screen to reuse existing ad content in new campaigns.',
                  fontSize: 13,
                ),
                SizedBox(height: 20),
                CustomTextInput(hintText: 'Referral ID / mobile'),
                SizedBox(height: 30),
                CustomSubmitButton(buttonText: 'Submit'),
                SizedBox(height: 30),
                CustomTextButton(buttonText: '< GO BACK'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
