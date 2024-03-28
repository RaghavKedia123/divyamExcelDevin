import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/neu_button_regular.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/neu_container.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/constants/colors.dart';

class UploadNewspaper2Screen extends StatefulWidget {
  const UploadNewspaper2Screen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<UploadNewspaper2Screen> createState() => _UploadNewspaper2ScreenState();
}

class _UploadNewspaper2ScreenState extends State<UploadNewspaper2Screen> {
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
        childWidget: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: screenWidth * 0.1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const NeuButtonRegular(label: 'Add another page'),
              const SizedBox(height: 30),
              const CustomSubmitButton(buttonText: 'Submit Issue'),
            ],
          ),
        ),
      ),
    );
  }
}
