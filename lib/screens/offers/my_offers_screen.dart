import 'package:divyam_excel/widgets/my_offer_tile.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/top_tabs_2.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';

class MyOffersScreen extends StatefulWidget {
  const MyOffersScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<MyOffersScreen> createState() => _MyOffersScreenState();
}

class _MyOffersScreenState extends State<MyOffersScreen> {
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
        titleText: 'My Offers',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          height: 34,
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(34),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              BodyText(
                text: 'Create New Offer',
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
      ),
      body: MainContainer(
        childWidget: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: screenWidth * 0.05,
          ),
          child: Column(
            children: [
              TopTabs2(
                selectedTab: selectedTab,
                tab1Text: 'Active',
                tab2Text: 'Previous',
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
              ),
              const SizedBox(height: 30),
              const MyOfferTile(),
            ],
          ),
        ),
      ),
    );
  }
}
