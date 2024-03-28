import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/top_tabs_4.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Notifications',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              vertical: 20, horizontal: screenWidth * 0.05),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopTabs4(
                tab1Text: 'Admin',
                tab2Text: 'MLM',
                tab3Text: 'B2B',
                tab4Text: 'Other',
              ),
              SizedBox(height: 20),
              BodyText(
                text: '08:34 AM 18 DEC 2023',
                fontSize: 11,
                color: kHintTextColor,
              ),
              SizedBox(height: 5),
              BodyText(
                text:
                    'Your event titled “Mumbai Jazz Festival - 2023” has been suspended because of multiple reports. Go into My Events section to see the details.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
