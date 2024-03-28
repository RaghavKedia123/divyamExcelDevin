import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/bordered_container.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class MyCoinsScreen extends StatefulWidget {
  const MyCoinsScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<MyCoinsScreen> createState() => _MyCoinsScreenState();
}

class _MyCoinsScreenState extends State<MyCoinsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'My Coins',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: screenWidth * 0.05,
            ),
            child: Column(
              children: [
                const BodyText(
                  text: 'Available Recharge Coins Balance',
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 10),
                const BodyText(
                  text: '1000',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 20),
                BorderedContainer(
                  childWidget: Column(
                    children: [
                      const BodyText(
                        text: 'Mini Statement',
                        fontWeight: FontWeight.w600,
                      ),
                      DataTable(
                        headingRowHeight: 0,
                        dividerThickness: 0,
                        columnSpacing: 10,
                        horizontalMargin: 0,
                        dataRowMinHeight: 20,
                        dataRowMaxHeight: 30,
                        columns: const [
                          DataColumn(label: Text('1')),
                          DataColumn(label: Text('2'), numeric: true),
                          DataColumn(label: Text('3')),
                          DataColumn(label: Text('4')),
                        ],
                        rows: const [
                          DataRow(
                            cells: [
                              DataCell(BodyText(text: '26/10/2023')),
                              DataCell(BodyText(text: '2103.00')),
                              DataCell(BodyText(text: 'CR')),
                              DataCell(BodyText(text: 'Bonus for week')),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(BodyText(text: '26/10/2023')),
                              DataCell(BodyText(text: '2103.00')),
                              DataCell(BodyText(text: 'CR')),
                              DataCell(BodyText(text: 'Bonus for week')),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(BodyText(text: '26/10/2023')),
                              DataCell(BodyText(text: '0.00')),
                              DataCell(BodyText(text: 'CR')),
                              DataCell(BodyText(text: 'Bonus for week')),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(BodyText(text: '26/10/2023')),
                              DataCell(BodyText(text: '2103.00')),
                              DataCell(BodyText(text: 'DB')),
                              DataCell(BodyText(text: 'Bonus withdrawal')),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(BodyText(text: '26/10/2023')),
                              DataCell(BodyText(text: '0.00')),
                              DataCell(BodyText(text: 'CR')),
                              DataCell(BodyText(text: 'Bonus for week')),
                            ],
                          ),
                        ],
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
