import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:divyam_excel/constants/colors.dart';

class TopTabs2 extends StatelessWidget {
  const TopTabs2({
    super.key,
    required this.selectedTab,
    required this.tab1Text,
    required this.tab2Text,
    required this.onClickTab1,
    required this.onClickTab2,
  });

  final int? selectedTab;
  final String tab1Text;
  final String tab2Text;
  final void Function() onClickTab1;
  final void Function() onClickTab2;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.05,
      ),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kBgColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              offset: Offset(-2, -2),
              blurRadius: 4,
              color: Color(0xAAFFFFFF),
            ),
            BoxShadow(
              offset: Offset(2, 2),
              blurRadius: 4,
              color: Color(0x22000000),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: selectedTab == 1
                  ? SelectedTab(tabText: tab1Text)
                  : UnselectedTab(
                      tabText: tab1Text,
                      onChange: onClickTab1,
                    ),
            ),
            Expanded(
              child: selectedTab == 2
                  ? SelectedTab(tabText: tab2Text)
                  : UnselectedTab(
                      tabText: tab2Text,
                      onChange: onClickTab2,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectedTab extends StatelessWidget {
  const SelectedTab({
    super.key,
    required this.tabText,
  });

  final String tabText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(50),
        boxShadow: const [
          BoxShadow(
            offset: Offset(-4, -4),
            blurRadius: 4,
            color: Color(0xAAFFFFFF),
            inset: true,
          ),
          BoxShadow(
            offset: Offset(4, 4),
            blurRadius: 4,
            color: Color(0x66000000),
            inset: true,
          ),
        ],
      ),
      child: Center(
        child: Text(
          tabText.toUpperCase(),
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class UnselectedTab extends StatelessWidget {
  const UnselectedTab({
    super.key,
    required this.tabText,
    required this.onChange,
  });

  final String tabText;
  final void Function() onChange;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChange,
      child: Center(
        child: Text(
          tabText.toUpperCase(),
          style: GoogleFonts.inter(
            color: kBodyTextColor,
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}