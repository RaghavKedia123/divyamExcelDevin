import 'package:divyam_excel/widgets/floating_buttons_1.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/famous_tile.dart';
import 'package:divyam_excel/widgets/offer_banner.dart';
import 'package:divyam_excel/widgets/top_tabs_3.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class FamousScreen extends StatefulWidget {
  const FamousScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<FamousScreen> createState() => _FamousScreenState();
}

class _FamousScreenState extends State<FamousScreen> {
  int? selectedTab;

  @override
  void initState() {
    super.initState();
    selectedTab = 2;
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
        childWidget: Center(
          child: SingleChildScrollView(
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
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                  ),
                  child: const FamousTile(),
                ),
                const SizedBox(height: 30),
                const OfferBanner(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
