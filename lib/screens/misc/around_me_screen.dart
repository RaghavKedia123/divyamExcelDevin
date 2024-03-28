import 'package:divyam_excel/widgets/floating_buttons_1.dart';
import 'package:divyam_excel/widgets/top_tabs_3.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class AroundMeScreen extends StatefulWidget {
  const AroundMeScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<AroundMeScreen> createState() => _AroundMeScreenState();
}

class _AroundMeScreenState extends State<AroundMeScreen> {
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
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: screenWidth * 0.05,
          ),
          child: Column(
            children: [
              TopTabs3(
                selectedTab: 3,
                tab1Text: 'News',
                tab2Text: 'Famous',
                tab3Text: 'Around Me',
                onClickTab1: () {},
                onClickTab2: () {},
                onClickTab3: () {},
              ),
              const SizedBox(height: 20),
              SeparatedColumn(
                separatorBuilder: () => const SizedBox(height: 20),
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  AroundMeItem(
                    title: 'Ad Designers',
                    entries: [
                      'Rahul Sharma - 9876543210',
                      'Rahul Sharma - 9876543210',
                      'Rahul Sharma - 9876543210',
                      'Rahul Sharma - 9876543210',
                    ],
                  ),
                  AroundMeItem(title: 'Blood Donors', entries: []),
                  AroundMeItem(title: 'Snake Catchers', entries: []),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AroundMeItem extends StatefulWidget {
  const AroundMeItem({
    super.key,
    required this.title,
    required this.entries,
  });

  final String title;
  final List<String> entries;

  @override
  State<AroundMeItem> createState() => _AroundMeItemState();
}

class _AroundMeItemState extends State<AroundMeItem> {
  bool isExpanded = false;
  bool isEntriesVisible = false;
  double? itemHeight;

  @override
  Widget build(BuildContext context) {
    const double collapsedHeight = 48;
    const double tableTopPadding = 10;
    const double entryHeight = 14.2;
    const double paddingVertical = 12;

    itemHeight = tableTopPadding +
        (widget.entries.length + 1) * entryHeight +
        (paddingVertical * 2) +
        collapsedHeight +
        30;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: isExpanded ? itemHeight : collapsedHeight,
      padding:
          const EdgeInsets.symmetric(horizontal: 20, vertical: paddingVertical),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kBgColor,
        boxShadow: const [
          BoxShadow(
            offset: Offset(-2, -2),
            blurRadius: 4,
            color: Color(0xDDFFFFFF),
          ),
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 4,
            color: Color(0x22000000),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
              if (!isEntriesVisible) {
                Future.delayed(const Duration(milliseconds: 250), () {
                  setState(() {
                    isEntriesVisible = !isEntriesVisible;
                  });
                });
              } else {
                setState(() {
                  isEntriesVisible = !isEntriesVisible;
                });
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BodyText(
                  text: widget.title.toUpperCase(),
                  fontWeight: FontWeight.w700,
                ),
                isExpanded
                    ? const Icon(Icons.arrow_drop_up)
                    : const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          isEntriesVisible
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: tableTopPadding),
                    const BodyText(
                      text: 'Add me to this list',
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                    const SizedBox(height: 10),
                    SeparatedColumn(
                      separatorBuilder: () => const SizedBox(height: 5),
                      children: widget.entries.map((entry) {
                        return BodyText(text: entry);
                      }).toList(),
                    ),
                  ],
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
