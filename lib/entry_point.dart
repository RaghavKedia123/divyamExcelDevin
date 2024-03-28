import 'dart:math';

import 'package:divyam_excel/components/side_menu.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/screens/business_listings/add_new_business_1_screen.dart';
import 'package:divyam_excel/screens/business_listings/add_new_business_2_screen.dart';
import 'package:divyam_excel/screens/business_listings/business_details_screen.dart';
import 'package:divyam_excel/screens/business_listings/business_directory_screen.dart';
import 'package:divyam_excel/screens/business_listings/business_issue_resolution_screen.dart';
import 'package:divyam_excel/screens/business_listings/edit_business_1_screen.dart';
import 'package:divyam_excel/screens/business_listings/edit_business_2_screen.dart';
import 'package:divyam_excel/screens/business_listings/my_businesses_screen.dart';
import 'package:divyam_excel/screens/business_listings/my_businesses_single_screen.dart';
import 'package:divyam_excel/screens/events/add_new_event_1_screen.dart';
import 'package:divyam_excel/screens/events/add_new_event_2_screen.dart';
import 'package:divyam_excel/screens/events/edit_event_screen.dart';
import 'package:divyam_excel/screens/events/event_details_screen.dart';
import 'package:divyam_excel/screens/events/event_issue_resolution_screen.dart';
import 'package:divyam_excel/screens/events/events_screen.dart';
import 'package:divyam_excel/screens/events/my_events_screen.dart';
import 'package:divyam_excel/screens/events/my_events_single_screen.dart';
import 'package:divyam_excel/screens/famous/add_new_famous_screen.dart';
import 'package:divyam_excel/screens/famous/edit_famous_screen.dart';
import 'package:divyam_excel/screens/famous/famous_issue_resolution_screen.dart';
import 'package:divyam_excel/screens/famous/famous_screen.dart';
import 'package:divyam_excel/screens/famous/my_famous_screen.dart';
import 'package:divyam_excel/screens/famous/my_famous_single_screen.dart';
import 'package:divyam_excel/screens/misc/around_me_screen.dart';
import 'package:divyam_excel/screens/misc/contact_us_screen.dart';
import 'package:divyam_excel/screens/misc/daily_prize_screen.dart';
import 'package:divyam_excel/screens/misc/faqs_screen.dart';
import 'package:divyam_excel/screens/misc/favorites_screen.dart';
import 'package:divyam_excel/screens/misc/my_coins_screen.dart';
import 'package:divyam_excel/screens/misc/my_tickets_screen.dart';
import 'package:divyam_excel/screens/misc/my_tickets_single_screen.dart';
import 'package:divyam_excel/screens/misc/new_features_screen.dart';
import 'package:divyam_excel/screens/misc/notifications_screen.dart';
import 'package:divyam_excel/screens/misc/open_new_ticket_screen.dart';
import 'package:divyam_excel/screens/misc/report_form_screen.dart';
import 'package:divyam_excel/screens/misc/terms_conditions_screen.dart';
import 'package:divyam_excel/screens/mlm/invite_and_earn_screen.dart';
import 'package:divyam_excel/screens/mlm/invite_friends_screen.dart';
import 'package:divyam_excel/screens/mlm/join_and_earn_1_screen.dart';
import 'package:divyam_excel/screens/mlm/join_and_earn_2_screen.dart';
import 'package:divyam_excel/screens/mlm/join_and_earn_3_screen.dart';
import 'package:divyam_excel/screens/mlm/my_bonus_screen.dart';
import 'package:divyam_excel/screens/mlm/my_team_screen.dart';
import 'package:divyam_excel/screens/mlm/sales_history_screen.dart';
import 'package:divyam_excel/screens/mlm/withdraw_bonus_screen.dart';
import 'package:divyam_excel/screens/my_profile/ad_designer_registration_screen.dart';
import 'package:divyam_excel/screens/my_profile/blood_donor_registration.dart';
import 'package:divyam_excel/screens/my_profile/change_password_screen.dart';
import 'package:divyam_excel/screens/my_profile/edit_bank_details_screen.dart';
import 'package:divyam_excel/screens/my_profile/edit_basic_details_screen.dart';
import 'package:divyam_excel/screens/my_profile/edit_mlm_details_screen.dart';
import 'package:divyam_excel/screens/my_profile/edit_preferences_screen.dart';
import 'package:divyam_excel/screens/my_profile/edit_secondary_contact_info_screen.dart';
import 'package:divyam_excel/screens/my_profile/my_profile_screen.dart';
import 'package:divyam_excel/screens/my_profile/snake_catcher_registration_screen.dart';
import 'package:divyam_excel/screens/news/add_new_newspaper_screen.dart';
import 'package:divyam_excel/screens/news/edit_newspaper_screen.dart';
import 'package:divyam_excel/screens/news/my_newspapers_screen.dart';
import 'package:divyam_excel/screens/news/my_newspapers_single_screen.dart';
import 'package:divyam_excel/screens/news/news_screen.dart';
import 'package:divyam_excel/screens/news/newspaper_issue_resolution_screen.dart';
import 'package:divyam_excel/screens/news/newspaper_screen.dart';
import 'package:divyam_excel/screens/news/upload_newspaper_1_screen.dart';
import 'package:divyam_excel/screens/news/upload_newspaper_2_screen.dart';
import 'package:divyam_excel/screens/offers/convert_diamonds_to_coins_screen.dart';
import 'package:divyam_excel/screens/offers/create_new_offer_1_screen.dart';
import 'package:divyam_excel/screens/offers/create_new_offer_2_screen.dart';
import 'package:divyam_excel/screens/offers/create_new_offer_3_screen.dart';
import 'package:divyam_excel/screens/offers/create_new_offer_4_screen.dart';
import 'package:divyam_excel/screens/offers/edit_offer_screen.dart';
import 'package:divyam_excel/screens/offers/my_offers_screen.dart';
import 'package:divyam_excel/screens/offers/my_offers_single_screen.dart';
import 'package:divyam_excel/screens/offers/offer_issue_resolution_screen.dart';
import 'package:divyam_excel/screens/offers/offers_screen.dart';
import 'package:divyam_excel/screens/offers/purchase_coins_screen.dart';
import 'package:divyam_excel/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

class EntryPoint extends StatefulWidget {
  const EntryPoint({
    super.key,
  });

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;

  bool _isSideMenuOpen = false;
  String loadScreen = 'businessDirectory';

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..addListener(() {
        setState(() {});
      });

    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );
    scaleAnimation = Tween<double>(
      begin: 1,
      end: 0.8,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleSideMenuOpenStatus() {
    if (_isSideMenuOpen) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
    setState(() {
      _isSideMenuOpen = !_isSideMenuOpen;
    });
  }

  void _navigateToScreen(String screenName) {
    _toggleSideMenuOpenStatus();

    setState(() {
      loadScreen = screenName;
    });
  }

  @override
  Widget build(BuildContext context) {
    Map<String, Widget> navigate = {
      'businessDirectory':
          BusinessDirectoryScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'businessDetails':
          BusinessDetailsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myBusinesses':
          MyBusinessesScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myBusinessesSingle':
          MyBusinessesSingleScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'businessIssueResolution': BusinessIssueResolutionScreen(
          onToggleSideMenu: _toggleSideMenuOpenStatus),
      'addNewBusiness1':
          AddNewBusiness1Screen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'addNewBusiness2':
          AddNewBusiness2Screen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'editBusiness1':
          EditBusiness1Screen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'editBusiness2':
          EditBusiness2Screen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'offers': OffersScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myOffers': MyOffersScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myOffersSingle':
          MyOffersSingleScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'offersIssueResolution': OfferIssueResolutionScreen(
          onToggleSideMenu: _toggleSideMenuOpenStatus),
      'createNewOffer1':
          CreateNewOffer1Screen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'createNewOffer2':
          CreateNewOffer2Screen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'createNewOffer3':
          CreateNewOffer3Screen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'createNewOffer4':
          CreateNewOffer4Screen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'convertDiamondsCoins': ConvertDiamondsToCoinsScreen(
          onToggleSideMenu: _toggleSideMenuOpenStatus),
      'purchaseCoins':
          PurchaseCoinsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'editOffer': EditOfferScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'events': EventsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'eventDetails':
          EventDetailsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myEvents': MyEventsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myEventsSingle':
          MyEventsSingleScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'eventIssueResolution': EventIssueResolutionScreen(
          onToggleSideMenu: _toggleSideMenuOpenStatus),
      'addNewEvent1':
          AddNewEvent1Screen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'addNewEvent2':
          AddNewEvent2Screen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'editEvent': EditEventScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'news': NewsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'newsPaper': NewspaperScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myNewspapers':
          MyNewspapersScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myNewspapersSingle':
          MyNewspapersSingleScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'newspaperIssueResolution': NewspaperIssueResolutionScreen(
          onToggleSideMenu: _toggleSideMenuOpenStatus),
      'uploadNewspaper1':
          UploadNewspaper1Screen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'uploadNewspaper2':
          UploadNewspaper2Screen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'addNewNewspaper':
          AddNewNewspaperScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'editNewspaper':
          EditNewspaperScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'famous': FamousScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myFamous': MyFamousScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myFamousSingle':
          MyFamousSingleScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'famousIssueResolution': FamousIssueResolutionScreen(
          onToggleSideMenu: _toggleSideMenuOpenStatus),
      'addNewFamous':
          AddNewFamousScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'editFamous':
          EditFamousScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'joinAndEarn1':
          JoinAndEarn1Screen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'joinAndEarn2':
          JoinAndEarn2Screen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'joinAndEarn3':
          JoinAndEarn3Screen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'inviteAndEarn':
          InviteAndEarnScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'inviteFriends':
          InviteFriendsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myTeam': MyTeamScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myBonus': MyBonusScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'withdrawBonus':
          WithdrawBonusScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'salesHistory':
          SalesHistoryScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myProfile': MyProfileScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'changePassword':
          ChangePasswordScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'editBasicDetails':
          EditBasicDetailsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'editSecondaryContactInfo': EditSecondaryContactInfoScreen(
          onToggleSideMenu: _toggleSideMenuOpenStatus),
      'editPreferences':
          EditPreferencesScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'editBankDetails':
          EditBankDetailsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'editMlmDetails':
          EditMlmDetailsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'adDesignerRegistration': AdDesignerRegistrationScreen(
          onToggleSideMenu: _toggleSideMenuOpenStatus),
      'bloodDonorRegistration': BloodDonorRegistrationScreen(
          onToggleSideMenu: _toggleSideMenuOpenStatus),
      'snakeCatcherRegistration': SnakeCatcherRegistrationScreen(
          onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myCoins': MyCoinsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'favorites': FavoritesScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myTickets': MyTicketsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'myTicketsSingle':
          MyTicketsSingleScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'openNewTicket':
          OpenNewTicketScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'aroundMe': AroundMeScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'newFeatures':
          NewFeaturesScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'dailyPrize':
          DailyPrizeScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'termsConditions':
          TermsConditionsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'contactUs': ContactUsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'faqs': FaqsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'notifications':
          NotificationsScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
      'reportForm':
          ReportFormScreen(onToggleSideMenu: _toggleSideMenuOpenStatus),
    };

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kSideMenuBgColor,
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            width: 288,
            left: _isSideMenuOpen ? screenWidth - 288 : screenWidth,
            height: MediaQuery.of(context).size.height,
            child: SideMenu(loadScreen: _navigateToScreen),
          ),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(30 * animation.value * pi / 180 - animation.value),
            child: Transform.translate(
              offset: Offset(animation.value * -265, 0),
              child: Transform.scale(
                scale: scaleAnimation.value,
                child: InkWell(
                  onTap: () {
                    if (_isSideMenuOpen) {
                      _toggleSideMenuOpenStatus();
                    }
                  },
                  child: _isSideMenuOpen
                      ? IgnorePointer(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: navigate[loadScreen]),
                        )
                      : navigate[loadScreen],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
