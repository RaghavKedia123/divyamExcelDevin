import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/body_text_icon.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';
import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class JoinAndEarn2Screen extends StatefulWidget {
  const JoinAndEarn2Screen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<JoinAndEarn2Screen> createState() => _JoinAndEarn2ScreenState();
}

class _JoinAndEarn2ScreenState extends State<JoinAndEarn2Screen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final List<Map<String, String>> tableRows = [
      {'pairs': '9', 'bonus': '5%', 'likes': '250', 'sales': '₹ 0'},
      {'pairs': '90', 'bonus': '10%', 'likes': '500', 'sales': '₹ 0'},
      {'pairs': '900', 'bonus': '15%', 'likes': '750', 'sales': '₹ 500'},
      {'pairs': '4,500', 'bonus': '18%', 'likes': '1,000', 'sales': '₹ 1,000'},
      {'pairs': '9,000', 'bonus': '21%', 'likes': '1,250', 'sales': '₹, 2,000'},
      {'pairs': '45,000', 'bonus': '24%', 'likes': '1,500', 'sales': '₹ 3,000'},
      {'pairs': '90,000', 'bonus': '27%', 'likes': '2,000', 'sales': '₹ 4,000'},
      {'pairs': '4.5 L', 'bonus': '30%', 'likes': '2,250', 'sales': '₹ 5,000'},
      {'pairs': '9 L', 'bonus': '32%', 'likes': '2,500', 'sales': '₹ 6,000'},
      {'pairs': '45 L', 'bonus': '34%', 'likes': '2,750', 'sales': '₹ 7,000'},
      {'pairs': '90 L', 'bonus': '36%', 'likes': '3,000', 'sales': '₹ 8,000'},
      {'pairs': '450 L', 'bonus': '38%', 'likes': '3,250', 'sales': '₹ 9,000'},
      {'pairs': '900 L', 'bonus': '39%', 'likes': '3,500', 'sales': '₹ 10,000'},
      {
        'pairs': 'Above 90 L',
        'bonus': '40%',
        'likes': '3,500',
        'sales': '₹ 10,000'
      },
    ];

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Join & Earn Forever',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: screenWidth * 0.1,
            ),
            child: Column(
              children: [
                const BodyText(
                  text:
                      'Welcome to the most innovative and exciting MLM you have ever seen!',
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const BodyTextIcon(
                  text: 'Free joining for lifetime!',
                  icon: FaIcon(
                    FontAwesomeIcons.solidCircleCheck,
                    size: 20,
                    color: kPrimaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                const BodyTextIcon(
                  text: 'Referral ratio 2:1 (Left & Right side)',
                  icon: FaIcon(
                    FontAwesomeIcons.solidCircleCheck,
                    size: 20,
                    color: kPrimaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                const BodyTextIcon(
                  text:
                      'Get paid only for offer views and referrals on first 2 levels',
                  icon: FaIcon(
                    FontAwesomeIcons.solidCircleCheck,
                    size: 20,
                    color: kPrimaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                Table(
                  border: TableBorder.all(
                    color: kPrimaryColor,
                    width: 1,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  defaultColumnWidth: const FlexColumnWidth(1),
                  children: [
                    const TableRow(
                      children: [
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
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: 'Likes',
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: 'Sales',
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    ...tableRows.map((row) {
                      return TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: row['pairs']!,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: row['bonus']!,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: row['likes']!,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: BodyText(
                            text: row['sales']!,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]);
                    }),
                  ],
                ),
                const SizedBox(height: 10),
                const BodyTextIcon(
                  text:
                      'Earn network sales bonus from level 3 onwards as per table below',
                  icon: FaIcon(
                    FontAwesomeIcons.solidCircleCheck,
                    size: 20,
                    color: kPrimaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                const BodyTextIcon(
                  text:
                      'Up to 20% additional commission on self offer referrals',
                  icon: FaIcon(
                    FontAwesomeIcons.solidCircleCheck,
                    size: 20,
                    color: kPrimaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                const BodyTextIcon(
                  text: '10% special bonus for top achievers',
                  icon: FaIcon(
                    FontAwesomeIcons.solidCircleCheck,
                    size: 20,
                    color: kPrimaryColor,
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    BodyText(
                      text: 'Terms & Conditions',
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const CustomTextButton(buttonText: 'Watch Explanation Video'),
                const SizedBox(height: 30),
                const CustomSubmitButton(buttonText: 'Next'),
                const SizedBox(height: 30),
                const CustomTextButton(buttonText: '< GO BACK'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
