import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class SalesHistoryScreen extends StatefulWidget {
  const SalesHistoryScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<SalesHistoryScreen> createState() => _SalesHistoryScreenState();
}

class _SalesHistoryScreenState extends State<SalesHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Sales History',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: screenWidth * 0.05,
          ),
          child: const Column(
            children: [
              SalesHistoryItem(
                title: '25-12-2023 to 31-12-2023',
                entries: [
                  {
                    'businessListing': 'Digital Boost Solutions',
                    'businessListingId': '12345',
                    'salesAmount': '3500',
                  },
                  {
                    'businessListing': 'Infinite Impressions Marketing',
                    'businessListingId': '12345',
                    'salesAmount': '3500',
                  },
                ],
                totalAmount: '7000',
              ),
              SizedBox(height: 20),
              SalesHistoryItem(
                title: '18-12-2023 to 24-12-2023',
                entries: [
                  {
                    'businessListing': 'Digital Boost Solutions',
                    'businessListingId': '12345',
                    'salesAmount': '3500',
                  },
                  {
                    'businessListing': 'Infinite Impressions Marketing',
                    'businessListingId': '12345',
                    'salesAmount': '3500',
                  },
                ],
                totalAmount: '7000',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SalesHistoryItem extends StatefulWidget {
  const SalesHistoryItem({
    super.key,
    required this.title,
    required this.entries,
    required this.totalAmount,
  });

  final String title;
  final List<Map<String, String>> entries;
  final String totalAmount;

  @override
  State<SalesHistoryItem> createState() => _SalesHistoryItemState();
}

class _SalesHistoryItemState extends State<SalesHistoryItem> {
  bool isExpanded = false;
  bool isEntriesVisible = false;
  double? itemHeight;

  @override
  Widget build(BuildContext context) {
    const double collapsedHeight = 48;
    const double tableTopPadding = 10;
    const double entryHeight = 32;
    const double paddingVertical = 12;

    itemHeight = tableTopPadding +
        (widget.entries.length + 1) * entryHeight +
        (paddingVertical * 2) +
        collapsedHeight;

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
                  text: widget.title,
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
                  children: [
                    const SizedBox(height: tableTopPadding),
                    Table(
                      border: TableBorder.all(
                        color: kHintTextColor,
                        width: 1,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      columnWidths: const {1: FractionColumnWidth(0.35)},
                      children: [
                        ...widget.entries.map((entry) {
                          return TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: BodyText(
                                  text: entry['businessListing']!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  color: kPrimaryColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: BodyText(
                                  text: '₹ ${entry['salesAmount']!}',
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          );
                        }),
                        TableRow(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10),
                              child: BodyText(
                                text: 'TOTAL',
                                fontWeight: FontWeight.w600,
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: BodyText(
                                text: '₹ ${widget.totalAmount}',
                                fontWeight: FontWeight.w600,
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
