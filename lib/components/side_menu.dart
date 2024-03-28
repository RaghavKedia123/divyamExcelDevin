import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    super.key,
    required this.loadScreen,
  });

  final void Function(String) loadScreen;

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  List<Map<String, dynamic>> sideMenus = [
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Business Directory',
      'screenName': 'businessDirectory',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Business Details',
      'screenName': 'businessDetails',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Businesses',
      'screenName': 'myBusinesses',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Businesses (Single)',
      'screenName': 'myBusinessesSingle',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Busi. Issue Res.',
      'screenName': 'businessIssueResolution',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Add New Business 1',
      'screenName': 'addNewBusiness1',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Add New Business 2',
      'screenName': 'addNewBusiness2',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Edit Business 1',
      'screenName': 'editBusiness1',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Edit Business 2',
      'screenName': 'editBusiness2',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Offers',
      'screenName': 'offers',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Offers',
      'screenName': 'myOffers',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Offers (Single)',
      'screenName': 'myOffersSingle',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Offers Issue Res.',
      'screenName': 'offersIssueResolution',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Create New Offer 1',
      'screenName': 'createNewOffer1',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Create New Offer 2',
      'screenName': 'createNewOffer2',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Create New Offer 3',
      'screenName': 'createNewOffer3',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Create New Offer 4',
      'screenName': 'createNewOffer4',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Diamonds to Coins',
      'screenName': 'convertDiamondsCoins',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Purchase Coins',
      'screenName': 'purchaseCoins',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Edit Offer',
      'screenName': 'editOffer',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Events',
      'screenName': 'events',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Event Details',
      'screenName': 'eventDetails',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Events',
      'screenName': 'myEvents',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Events (Single)',
      'screenName': 'myEventsSingle',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Event Issue Res.',
      'screenName': 'eventIssueResolution',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Add New Event 1',
      'screenName': 'addNewEvent1',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Add New Event 2',
      'screenName': 'addNewEvent2',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Edit Event',
      'screenName': 'editEvent',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'News',
      'screenName': 'news',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Newspaper',
      'screenName': 'newsPaper',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Newspapers',
      'screenName': 'myNewspapers',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Newspapers (Single)',
      'screenName': 'myNewspapersSingle',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'News Issue Res.',
      'screenName': 'newspaperIssueResolution',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Upload Newspaper 1',
      'screenName': 'uploadNewspaper1',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Upload Newspaper 2',
      'screenName': 'uploadNewspaper2',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Add Newspaper',
      'screenName': 'addNewNewspaper',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Edit Newspaper',
      'screenName': 'editNewspaper',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Famous',
      'screenName': 'famous',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Famous',
      'screenName': 'myFamous',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Famous (Single)',
      'screenName': 'myFamousSingle',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Famous Issue Res.',
      'screenName': 'famousIssueResolution',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Add New Famous',
      'screenName': 'addNewFamous',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Edit Famous',
      'screenName': 'editFamous',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Join & Earn 1',
      'screenName': 'joinAndEarn1',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Join & Earn 2',
      'screenName': 'joinAndEarn2',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Join & Earn 3',
      'screenName': 'joinAndEarn3',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Invite & Earn',
      'screenName': 'inviteAndEarn',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Invite Friends',
      'screenName': 'inviteFriends',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Team',
      'screenName': 'myTeam',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Bonus',
      'screenName': 'myBonus',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Withdraw Bonus',
      'screenName': 'withdrawBonus',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Sales History',
      'screenName': 'salesHistory',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Profile',
      'screenName': 'myProfile',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Change Password',
      'screenName': 'changePassword',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Edit Basic Details',
      'screenName': 'editBasicDetails',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Edit Sec. Contact',
      'screenName': 'editSecondaryContactInfo',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Edit Preferences',
      'screenName': 'editPreferences',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Edit Bank Details',
      'screenName': 'editBankDetails',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Edit MLM Details',
      'screenName': 'editMlmDetails',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Ad Designer Reg.',
      'screenName': 'adDesignerRegistration',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Blood Donor Reg.',
      'screenName': 'bloodDonorRegistration',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Snake Catcher Reg.',
      'screenName': 'snakeCatcherRegistration',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Coins',
      'screenName': 'myCoins',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Favorites',
      'screenName': 'favorites',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Tickets',
      'screenName': 'myTickets',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'My Tickets (Single)',
      'screenName': 'myTicketsSingle',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Open New Ticket',
      'screenName': 'openNewTicket',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Around Me',
      'screenName': 'aroundMe',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'New Features',
      'screenName': 'newFeatures',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Daily Prize',
      'screenName': 'dailyPrize',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Terms & Conditions',
      'screenName': 'termsConditions',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Contact Us',
      'screenName': 'contactUs',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'FAQs',
      'screenName': 'faqs',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Notifications',
      'screenName': 'notifications',
    },
    {
      'iconData': Icons.notifications_outlined,
      'label': 'Report Form',
      'screenName': 'reportForm',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: kSideMenuBgColor,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 15),
                    child: Image.asset('assets/images/de.png'),
                  ),
                  ...sideMenus.map((menuItem) {
                    return SideMenuItem(
                      iconData: menuItem['iconData'],
                      label: menuItem['label'],
                      screenName: menuItem['screenName'],
                      loadScreen: widget.loadScreen,
                    );
                  }).toList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({
    super.key,
    required this.iconData,
    required this.label,
    required this.screenName,
    required this.loadScreen,
  });

  final IconData iconData;
  final String label;
  final String screenName;
  final void Function(String) loadScreen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        loadScreen(screenName);
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(
              iconData,
              size: 22,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            BodyText(
              text: label,
              fontSize: 18,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
