import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:divyam_excel/widgets/number_icons.dart';
import 'package:divyam_excel/widgets/offer_tile.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/verification_badge.dart';
import 'package:divyam_excel/models/item_actions.dart';
import 'package:divyam_excel/widgets/item_actions_bar.dart';
import 'package:divyam_excel/widgets/body_text_icon.dart';
import 'package:divyam_excel/widgets/neu_button_small.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';
import 'package:divyam_excel/widgets/item_title.dart';

class BusinessDetailsScreen extends StatefulWidget {
  const BusinessDetailsScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<BusinessDetailsScreen> createState() => _BusinessDetailsScreenState();
}

class _BusinessDetailsScreenState extends State<BusinessDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final List<ItemAction> listingAvailableActions = [
      ItemAction(actionCount: 55.toString(), postAction: PostAction.share),
      ItemAction(actionCount: 4.8.toString(), postAction: PostAction.rating),
      ItemAction(postAction: PostAction.call),
      ItemAction(postAction: PostAction.location),
      ItemAction(postAction: PostAction.favorite),
    ];

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Business Details',
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: (screenWidth * 0.8 - 35),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ItemTitle(
                                  text: 'Didwaniya Super Market',
                                ),
                                SizedBox(height: 5),
                                BodyText(text: 'Grocery'),
                                SizedBox(height: 5),
                                VerificationBadge(),
                                SizedBox(height: 5),
                                // BodyText(text: '9422327711'),
                                // NumberToIcon('1234567890'),
                                NumberIcons(
                                  numberString: '9876543210',
                                  color: kBodyTextColor,
                                  size: 12,
                                  gap: 1,
                                ),
                              ],
                            ),
                          ),
                          const NeuButtonSmall(icon: Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const BodyTextIcon(
                        text: 'Main Market, Near SBI Main Branch, 444303',
                        icon: Icon(Icons.location_on_outlined),
                      ),
                      const SizedBox(height: 5),
                      const BodyText(
                        text: '09:30 AM - 08:00 PM',
                        color: Color(0xFF0C952A),
                      ),
                      const SizedBox(height: 5),
                      AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      GridView(
                        shrinkWrap: true,
                        primary: false, // disables internal scrolling
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1 / 1,
                          crossAxisSpacing: 5,
                        ),
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const BodyTextIcon(
                        text: 'dhruvmarket.com',
                        icon: FaIcon(
                          FontAwesomeIcons.globe,
                          size: 22,
                          color: kBodyTextColor,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const BodyTextIcon(
                        text: 'email@dhruvmarket.com',
                        icon: FaIcon(
                          FontAwesomeIcons.envelope,
                          size: 22,
                          color: kBodyTextColor,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const BodyTextIcon(
                        text: '9876543210',
                        icon: FaIcon(
                          FontAwesomeIcons.whatsapp,
                          size: 22,
                          color: kPrimaryColor,
                        ),
                        color: kPrimaryColor,
                      ),
                      const SizedBox(height: 5),
                      ItemActionsBar(itemActions: listingAvailableActions),
                      const SizedBox(height: 5),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: const Color(0xFF0C952A),
                            width: 1,
                          ),
                        ),
                        child: const BodyText(
                          text: 'Offer(s) available today',
                          fontSize: 12,
                          color: Color(0xFF0C952A),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const OfferTile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
