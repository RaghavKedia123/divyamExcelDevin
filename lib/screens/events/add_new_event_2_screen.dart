import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/event_tile.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';

class AddNewEvent2Screen extends StatefulWidget {
  const AddNewEvent2Screen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<AddNewEvent2Screen> createState() => _AddNewEvent2ScreenState();
}

class _AddNewEvent2ScreenState extends State<AddNewEvent2Screen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Add New Event',
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
              children: [
                BodyText(
                  text: 'Preview',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 20),
                IgnorePointer(
                  child: EventTile(),
                ),
                SizedBox(height: 30),
                CustomSubmitButton(buttonText: 'Confirm'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
