import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/top_tabs_2.dart';
import 'package:divyam_excel/models/item_status_tags.dart';
import 'package:divyam_excel/widgets/item_status_tag.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/neu_container.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';

class MyFamousScreen extends StatefulWidget {
  const MyFamousScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<MyFamousScreen> createState() => _MyFamousScreenState();
}

class _MyFamousScreenState extends State<MyFamousScreen> {
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
        titleText: 'My Famous',
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
                text: 'Create New Famous',
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
              NeuContainer(
                padding: const EdgeInsets.all(10),
                childWidget: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                    ),
                    const VerticalDivider(width: 10),
                    const Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ItemStatusTag(itemStatus: ItemStatus.pending),
                          SizedBox(height: 5),
                          BodyText(
                            text: '50% off on Branded...',
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 5),
                          BodyText(
                            text: 'We are offering 50% off on various brands.',
                            fontSize: 13,
                          ),
                          SizedBox(height: 5),
                          BodyText(
                            text: 'Ghawalkar Dresses',
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                Icons.thumb_up,
                                color: kBodyTextColor,
                                size: 16,
                              ),
                              SizedBox(width: 3),
                              BodyText(text: '0'),
                              SizedBox(width: 8),
                              Icon(
                                Icons.share,
                                color: kBodyTextColor,
                                size: 16,
                              ),
                              SizedBox(width: 3),
                              BodyText(text: '0'),
                              SizedBox(width: 8),
                              Icon(
                                Icons.remove_red_eye,
                                color: kBodyTextColor,
                                size: 16,
                              ),
                              SizedBox(width: 3),
                              BodyText(text: '20'),
                            ],
                          ),
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
    );
  }
}
