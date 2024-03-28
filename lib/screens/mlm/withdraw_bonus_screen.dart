import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/bordered_container.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class WithdrawBonusScreen extends StatefulWidget {
  const WithdrawBonusScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<WithdrawBonusScreen> createState() => _WithdrawBonusScreenState();
}

class _WithdrawBonusScreenState extends State<WithdrawBonusScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Withdraw Bonus',
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
                const BorderedContainer(
                  borderColor: kPrimaryColor,
                  childWidget: Column(
                    children: [
                      BodyText(
                        text: 'Last Bonus Breakup',
                        fontWeight: FontWeight.w600,
                      ),
                      BodyText(text: 'Credit Date: 06-11-2023'),
                      BodyText(text: 'Eligibility Level: 2'),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BodyText(text: 'Gross Bonus:'),
                          Icon(
                            Icons.diamond_outlined,
                            size: 18,
                            color: kPrimaryColor,
                          ),
                          BodyText(text: '2,250'),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                BodyText(text: 'Left Bonus:'),
                                Icon(
                                  Icons.diamond_outlined,
                                  size: 18,
                                  color: kPrimaryColor,
                                ),
                                BodyText(text: '2,250'),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                BodyText(text: 'Right Bonus:'),
                                Icon(
                                  Icons.diamond_outlined,
                                  size: 18,
                                  color: kPrimaryColor,
                                ),
                                BodyText(text: '2,250'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                BorderedContainer(
                  borderColor: kPrimaryColor,
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
                      const SizedBox(height: 5),
                      const Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text: 'Available balance',
                              fontSize: 13,
                            ),
                          ),
                          Expanded(
                            child: BodyText(
                              text: '21533.00',
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: const Column(
                    children: [
                      BodyText(
                        text: 'Get account statement',
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 20),
                      CustomTextInput(hintText: 'From'),
                      SizedBox(height: 20),
                      CustomTextInput(hintText: 'To'),
                      SizedBox(height: 30),
                      CustomSubmitButton(buttonText: 'Email Statement'),
                      SizedBox(height: 30),
                      CustomTextButton(
                        buttonText: 'Convert Diamonds Into Coins',
                        color: Color(0xFFF08201),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const BorderedContainer(
                  borderColor: kPrimaryColor,
                  childWidget: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text: 'Bank Account Name',
                              textAlign: TextAlign.right,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: BodyText(
                              text: 'Arvind Suradkar',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text: 'Account Number',
                              textAlign: TextAlign.right,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: BodyText(
                              text: '123456789101112',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text: 'IFS Code',
                              textAlign: TextAlign.right,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: BodyText(
                              text: '03282',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: const Column(
                    children: [
                      CustomTextInput(
                          hintText: 'Withdrawal amount (1 Diamond = 1 Rs)'),
                      SizedBox(height: 30),
                      CustomSubmitButton(buttonText: 'Get OTP'),
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
