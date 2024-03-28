import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/item_title.dart';
import 'package:divyam_excel/widgets/neu_container.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class NewFeaturesScreen extends StatefulWidget {
  const NewFeaturesScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<NewFeaturesScreen> createState() => _NewFeaturesScreenState();
}

class _NewFeaturesScreenState extends State<NewFeaturesScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'New Features',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: screenWidth * 0.1,
          ),
          child: Column(
            children: [
              NeuContainer(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                childWidget: Column(
                  children: [
                    const ItemTitle(text: 'New Feature'),
                    const SizedBox(height: 10),
                    AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Container(
                        color: Colors.black12,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const BodyText(
                        text:
                            'This is the description of our new exciting new feature'),
                    const SizedBox(height: 10),
                    const BodyText(
                      text: 'Click here to see details',
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
