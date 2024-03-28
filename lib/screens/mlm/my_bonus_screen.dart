import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/bordered_container.dart';
import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class MyBonusScreen extends StatefulWidget {
  const MyBonusScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<MyBonusScreen> createState() => _MyBonusScreenState();
}

class _MyBonusScreenState extends State<MyBonusScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'My Bonus',
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
                  text: 'User ID: EE987654665',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                const BodyText(
                  text: '(05 Nov - 12 Nov)',
                  fontSize: 12,
                  color: Color(0xFFA4A4A4),
                ),
                const SizedBox(height: 20),
                const BorderedContainer(
                  borderColor: kPrimaryColor,
                  childWidget: Column(
                    children: [
                      BodyText(text: 'Personal sales commission'),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.diamond_outlined,
                            color: kPrimaryColor,
                            size: 18,
                          ),
                          SizedBox(width: 5),
                          BodyText(
                            text: '5,100',
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const BorderedContainer(
                  borderColor: kPrimaryColor,
                  childWidget: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text: 'Total Business',
                              textAlign: TextAlign.right,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: BodyText(
                              text: '₹ 7,806',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text: 'Gross Bonus',
                              textAlign: TextAlign.right,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.diamond_outlined,
                                  color: kPrimaryColor,
                                  size: 18,
                                ),
                                SizedBox(width: 5),
                                BodyText(
                                  text: '7,806',
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text: 'Net Bonus',
                              textAlign: TextAlign.right,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.diamond_outlined,
                                  color: kPrimaryColor,
                                  size: 18,
                                ),
                                SizedBox(width: 5),
                                BodyText(
                                  text: '7,806',
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      BodyText(
                        text: 'Net Bonus = Gross Bonus - Downline Bonus',
                        fontSize: 13,
                        color: Color(0xFFA4A4A4),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Expanded(
                      child: BorderedContainer(
                        borderColor: kPrimaryColor,
                        childWidget: Column(
                          children: [
                            BodyText(
                              text: 'Immediate Left',
                              fontWeight: FontWeight.w600,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: BodyText(
                                    text: 'Business',
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: BodyText(text: '₹ 3,200'),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: BodyText(
                                    text: 'Business',
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.diamond_outlined,
                                        color: kPrimaryColor,
                                        size: 18,
                                      ),
                                      SizedBox(width: 5),
                                      BodyText(
                                        text: '7,806',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: BorderedContainer(
                        borderColor: kPrimaryColor,
                        childWidget: Column(
                          children: [
                            BodyText(
                              text: 'Immediate Right',
                              fontWeight: FontWeight.w600,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: BodyText(
                                    text: 'Business',
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: BodyText(text: '₹ 3,200'),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: BodyText(
                                    text: 'Business',
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.diamond_outlined,
                                        color: kPrimaryColor,
                                        size: 18,
                                      ),
                                      SizedBox(width: 5),
                                      BodyText(
                                        text: '7,806',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Bonus Awaits\nReach Targets, Celebrate Success!',
                  style: GoogleFonts.kaushanScript(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Table(
                  border: TableBorder.all(
                    color: kPrimaryColor,
                    width: 1,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: const [
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: 'Pairs',
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: 'Bonus',
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: BodyText(
                            text: 'Member Pairs',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: '450k',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: '900k',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: BodyText(
                            text: '% Bonus',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: '30%',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: '32%',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: BodyText(
                            text: 'Min. Likes',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: '2250',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: '2500',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: BodyText(
                            text: 'Min. Sales',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: '5000',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: '6000',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Table(
                  border: TableBorder.all(
                    color: kPrimaryColor,
                    width: 1,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: const [
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: BodyText(
                            text: 'Target Achieved',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: 'Level 2',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: '10% Bonus',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: BodyText(
                            text: 'Likes\nTarget',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: '1.31k / 1.25k',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: 'Add Likes',
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: BodyText(
                            text: 'Sales\nTarget',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: '₹ 4.72k / ₹ 10k',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: 'Add Sales',
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: BodyText(
                            text: 'Downline Count',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: '1439',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: 'Invite',
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const CustomTextButton(
                  buttonText: 'Watch the Plans Explanation Video',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
