import 'package:divyam_excel/widgets/bordered_container.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:unicons/unicons.dart';

import 'package:divyam_excel/widgets/invite_button.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class InviteAndEarnScreen extends StatefulWidget {
  const InviteAndEarnScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<InviteAndEarnScreen> createState() => _InviteAndEarnScreenState();
}

class _InviteAndEarnScreenState extends State<InviteAndEarnScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Join & Earn 4ever',
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
                const Row(
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: InviteButton(
                          label: 'To your\nLeft hand',
                        ),
                      ),
                    ),
                    Expanded(
                      child: BodyText(
                        text: 'INVITE FRIENDS',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: InviteButton(
                          label: 'To your\nRight hand',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                BorderedContainer(
                  borderColor: kPrimaryColor,
                  childWidget: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const BodyText(
                                text: 'My Team',
                                fontWeight: FontWeight.w600,
                              ),
                              const SizedBox(height: 10),
                              Table(
                                border: TableBorder.all(
                                  color: kBodyTextColor,
                                  width: 0.5,
                                ),
                                children: const [
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 3),
                                        child: BodyText(
                                          text: 'B.A.',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 3),
                                        child: BodyText(
                                          text: 'Total',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 3),
                                        child: BodyText(
                                          text: '7',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 3),
                                        child: BodyText(
                                          text: '34',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const VerticalDivider(width: 10),
                        const Expanded(
                          child: Column(
                            children: [
                              BodyText(
                                text: 'My Team',
                                fontWeight: FontWeight.w600,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    UniconsLine.arrow_growth,
                                    size: 50,
                                    color: kPrimaryColor,
                                  ),
                                  SizedBox(width: 5),
                                  Column(
                                    children: [
                                      BodyText(text: 'This week'),
                                      SizedBox(height: 5),
                                      BodyText(text: '12 / 55'),
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
                const SizedBox(height: 20),
                BorderedContainer(
                  borderColor: kPrimaryColor,
                  childWidget: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Table(
                      children: const [
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3),
                              child: BodyText(
                                text: 'Left Team Business',
                                fontWeight: FontWeight.w600,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3),
                              child: BodyText(
                                text: 'Total Business',
                                fontWeight: FontWeight.w600,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3),
                              child: BodyText(
                                text: 'Right Team Business',
                                fontWeight: FontWeight.w600,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3),
                              child: BodyText(
                                text: '₹ 22,502',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3),
                              child: BodyText(
                                text: '₹ 35,230',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3),
                              child: BodyText(
                                text: '₹ 11,728',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const BorderedContainer(
                  borderColor: kPrimaryColor,
                  childWidget: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              BodyText(
                                text: 'My Team',
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.diamond_outlined,
                                    size: 18,
                                    color: kPrimaryColor,
                                  ),
                                  SizedBox(width: 5),
                                  BodyText(text: '4,864'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              BodyText(
                                text: 'My Team',
                                fontWeight: FontWeight.w600,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    UniconsLine.arrow_growth,
                                    size: 50,
                                    color: kPrimaryColor,
                                  ),
                                  SizedBox(width: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      BodyText(text: 'This week'),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.diamond_outlined,
                                            size: 18,
                                            color: kPrimaryColor,
                                          ),
                                          SizedBox(width: 5),
                                          BodyText(text: '4,864'),
                                        ],
                                      ),
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
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Expanded(
                      child: ShortcutButton(buttonText: 'Bonus System'),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: ShortcutButton(buttonText: 'Present Bonus'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Expanded(
                      child: ShortcutButton(buttonText: 'Bonus Withdrawal'),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: ShortcutButton(buttonText: 'Products to Refer'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Expanded(
                      child: ShortcutButton(buttonText: 'Offers'),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: ShortcutButton(buttonText: 'Seminars in My Area'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShortcutButton extends StatefulWidget {
  const ShortcutButton({
    super.key,
    required this.buttonText,
  });

  final String buttonText;

  @override
  State<ShortcutButton> createState() => _ShortcutButtonState();
}

class _ShortcutButtonState extends State<ShortcutButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Color darkShadow =
        isPressed ? const Color(0x77000000) : const Color(0x22000000);
    Color lightShadow =
        isPressed ? const Color(0xCCFFFFFF) : const Color(0xFFFFFFFF);
    Offset shadowOffset = isPressed ? const Offset(2, 2) : const Offset(3, 3);
    double shadowBlur = isPressed ? 4.0 : 6.0;

    return Listener(
      onPointerUp: (_) => setState(() {
        isPressed = false;
      }),
      onPointerDown: (_) => setState(() {
        isPressed = true;
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 50,
        decoration: BoxDecoration(
          color: kBgColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: darkShadow,
              offset: shadowOffset,
              blurRadius: shadowBlur,
              inset: isPressed,
            ),
            BoxShadow(
              color: lightShadow,
              offset: -shadowOffset,
              blurRadius: shadowBlur,
              inset: isPressed,
            ),
          ],
        ),
        child: Center(
          child: BodyText(
            text: widget.buttonText,
            color: kPrimaryColor,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
