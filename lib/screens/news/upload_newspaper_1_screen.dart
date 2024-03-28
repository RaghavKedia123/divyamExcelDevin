import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/neu_container.dart';
import 'package:divyam_excel/widgets/body_bold_regular_text.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/item_title.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/constants/colors.dart';

class UploadNewspaper1Screen extends StatefulWidget {
  const UploadNewspaper1Screen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<UploadNewspaper1Screen> createState() => _UploadNewspaper1ScreenState();
}

class _UploadNewspaper1ScreenState extends State<UploadNewspaper1Screen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Upload Newspaper',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ItemTitle(text: 'The Times of India'),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                  boldText: 'Issue date: ',
                  regularText: '13-12-2023',
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: NeuContainer(
                            padding: const EdgeInsets.all(10),
                            childWidget: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 2 / 3,
                                  child: Container(
                                    color: Colors.black12,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const BodyText(text: 'Front page'),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: NeuContainer(
                            padding: const EdgeInsets.all(10),
                            childWidget: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 2 / 3,
                                  child: Container(
                                    color: Colors.black12,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const BodyText(text: 'Page #2'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: NeuContainer(
                            padding: const EdgeInsets.all(10),
                            childWidget: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 2 / 3,
                                  child: Container(
                                    color: Colors.black12,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const BodyText(text: 'Front page'),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: NeuContainer(
                            padding: const EdgeInsets.all(10),
                            childWidget: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 2 / 3,
                                  child: Container(
                                    color: Colors.black12,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const BodyText(text: 'Page #2'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const BodyBoldRegularText(
                    boldText: 'Note: ',
                    regularText:
                        'Last issue will be deleted when you upload new issue'),
                const SizedBox(height: 30),
                const CustomSubmitButton(buttonText: 'Upload New Issue'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
