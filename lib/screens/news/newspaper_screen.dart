import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_bold_regular_text.dart';
import 'package:divyam_excel/widgets/item_title.dart';
import 'package:divyam_excel/widgets/neu_container.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class NewspaperScreen extends StatefulWidget {
  const NewspaperScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<NewspaperScreen> createState() => _NewspaperScreenState();
}

class _NewspaperScreenState extends State<NewspaperScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Newspaper',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ItemTitle(text: 'The Times of India'),
                      const SizedBox(height: 20),
                      const BodyBoldRegularText(
                        boldText: 'Issue date',
                        regularText: '12-12-2023',
                      ),
                      const SizedBox(height: 20),
                      NeuContainer(
                        padding: const EdgeInsets.all(20),
                        childWidget: Column(
                          children: [
                            AspectRatio(
                              aspectRatio: 2 / 3,
                              child: Container(
                                color: Colors.black12,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const BodyText(text: 'Front page')
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      NeuContainer(
                        padding: const EdgeInsets.all(20),
                        childWidget: Column(
                          children: [
                            AspectRatio(
                              aspectRatio: 2 / 3,
                              child: Container(
                                color: Colors.black12,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const BodyText(text: 'Page #2')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
