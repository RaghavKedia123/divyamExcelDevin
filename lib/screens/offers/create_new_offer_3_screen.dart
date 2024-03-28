import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/widgets/offer_tile.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';

class CreateNewOffer3Screen extends StatefulWidget {
  const CreateNewOffer3Screen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<CreateNewOffer3Screen> createState() => _CreateNewOffer3ScreenState();
}

class _CreateNewOffer3ScreenState extends State<CreateNewOffer3Screen> {
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
              horizontal: screenWidth * 0.05,
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BodyText(
                  text: 'Preview',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 20),
                IgnorePointer(
                  child: OfferTile(),
                ),
                SizedBox(height: 30),
                CustomSubmitButton(buttonText: 'Confirm'),
                SizedBox(height: 30),
                Center(
                  child: CustomTextButton(buttonText: '< GO BACK'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
