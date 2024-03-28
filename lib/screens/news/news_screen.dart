import 'package:divyam_excel/widgets/floating_buttons_1.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/offer_banner.dart';
import 'package:divyam_excel/widgets/neu_container.dart';
import 'package:divyam_excel/widgets/top_tabs_3.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  int? selectedTab;

  @override
  void initState() {
    super.initState();
    selectedTab = 1;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Highlights',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      floatingActionButton: const FloatingButtons1(),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Column(
                  children: [
                    TopTabs3(
                      selectedTab: selectedTab,
                      tab1Text: 'News',
                      tab2Text: 'Famous',
                      tab3Text: 'Around Me',
                      onClickTab1: () {
                        setState(() {
                          selectedTab = 1;
                        });
                      },
                      onClickTab2: () {
                        setState(() {
                          selectedTab = 2;
                        });
                      },
                      onClickTab3: () {
                        setState(() {
                          selectedTab = 3;
                        });
                      },
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        const VerticalDivider(width: 10),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 30,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: kBgColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(-2, -2),
                                  blurRadius: 4,
                                  color: Color(0xBBFFFFFF),
                                ),
                                BoxShadow(
                                  offset: Offset(2, 2),
                                  blurRadius: 4,
                                  color: Color(0x22000000),
                                ),
                              ],
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BodyText(
                                  text: 'Khamgaon',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: kHintTextColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: NeuContainer(
                        padding: const EdgeInsets.all(10),
                        childWidget: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AspectRatio(
                              aspectRatio: 1 / 1,
                              child: Container(
                                color: Colors.black12,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const BodyText(
                              text: 'The Times of India',
                              fontWeight: FontWeight.w600,
                            ),
                            const SizedBox(height: 5),
                            const BodyText(text: '12-12-2023'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: NeuContainer(
                        padding: const EdgeInsets.all(10),
                        childWidget: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AspectRatio(
                              aspectRatio: 1 / 1,
                              child: Container(
                                color: Colors.black12,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const BodyText(
                              text: 'The Times of India',
                              fontWeight: FontWeight.w600,
                            ),
                            const SizedBox(height: 5),
                            const BodyText(text: '12-12-2023'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const OfferBanner(),
            ],
          ),
        ),
      ),
    );
  }
}
