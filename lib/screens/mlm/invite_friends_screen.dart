import 'package:divyam_excel/widgets/neu_container.dart';
import 'package:divyam_excel/widgets/user_card_content.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class InviteFriendsScreen extends StatefulWidget {
  const InviteFriendsScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<InviteFriendsScreen> createState() => _InviteFriendsScreenState();
}

class _InviteFriendsScreenState extends State<InviteFriendsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Invite Fiends to Left',
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
                NeuContainer(
                  padding: EdgeInsets.all(10),
                  childWidget: UserCardContent(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
