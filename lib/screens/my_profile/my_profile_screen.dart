import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/custom_checkbox.dart';
import 'package:divyam_excel/widgets/field_value_center_row.dart';
import 'package:divyam_excel/widgets/profile_expanding_card.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/user_card_content.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/bottom_navigation.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  bool isUserCardExpanded = false;
  bool isUserCardContentVisible = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'My Profile',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: MainContainer(
        childWidget: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: screenWidth * 0.1,
          ),
          child: SeparatedColumn(
            separatorBuilder: () => const SizedBox(height: 20),
            children: [
              const ProfileExpandingCard(
                title: 'User Card',
                childHeight: 663,
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    UserCardContent(),
                  ],
                ),
              ),
              const ProfileExpandingCard(
                title: 'Password',
                showEditIcon: true,
                childHeight: 60,
                child: FieldValueCenterRow(
                    fieldName: 'Password', fieldValue: '**********'),
              ),
              ProfileExpandingCard(
                title: 'Basic Details',
                showEditIcon: true,
                childHeight: 430,
                child: SeparatedColumn(
                  separatorBuilder: () => const SizedBox(height: 10),
                  children: const [
                    FieldValueCenterRow(
                        fieldName: 'First name', fieldValue: 'Arvind'),
                    FieldValueCenterRow(
                        fieldName: 'Last name', fieldValue: 'Suradkar'),
                    FieldValueCenterRow(
                        fieldName: 'Date of birth', fieldValue: '10-12-1980'),
                    FieldValueCenterRow(fieldName: 'Sex', fieldValue: 'Male'),
                    FieldValueCenterRow(
                        fieldName: 'State', fieldValue: 'Maharashtra'),
                    FieldValueCenterRow(
                        fieldName: 'District', fieldValue: 'Buldhana'),
                    FieldValueCenterRow(
                        fieldName: 'Taluka', fieldValue: 'Khamgaon'),
                    FieldValueCenterRow(
                        fieldName: 'PIN code', fieldValue: '444303'),
                    FieldValueCenterRow(
                        fieldName: 'Primary mobile', fieldValue: '9876543210'),
                    FieldValueCenterRow(
                        fieldName: 'Secondary mobile',
                        fieldValue: '9876543211'),
                    FieldValueCenterRow(
                        fieldName: 'Email address',
                        fieldValue: 'verylongemailaddress@rediffmail.com'),
                    FieldValueCenterRow(
                        fieldName: 'Referral code', fieldValue: 'JSFK180001'),
                  ],
                ),
              ),
              const ProfileExpandingCard(
                title: 'Preferences',
                showEditIcon: true,
                childHeight: 60,
                child: FieldValueCenterRow(
                    fieldName: 'Language', fieldValue: 'Marathi'),
              ),
              ProfileExpandingCard(
                title: 'MLM Details',
                showEditIcon: true,
                childHeight: 230,
                child: SeparatedColumn(
                  separatorBuilder: () => const SizedBox(height: 10),
                  children: [
                    Container(
                      height: 20,
                      color: kOrangeColor,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Center(
                        child: BodyText(
                          text: 'Verification pending',
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const FieldValueCenterRow(
                        fieldName: 'User ID', fieldValue: 'FKYU300002'),
                    const FieldValueCenterRow(
                        fieldName: 'AADHAAR number',
                        fieldValue: '8888 8888 8888'),
                    const FieldValueCenterRow(
                        fieldName: 'WhatsApp link',
                        fieldValue:
                            'https://faq.whatsapp.com/3242937609289432/?cms_platform=web'),
                  ],
                ),
              ),
              ProfileExpandingCard(
                title: 'Bank Details',
                showEditIcon: true,
                childHeight: 150,
                child: SeparatedColumn(
                  separatorBuilder: () => const SizedBox(height: 10),
                  children: const [
                    FieldValueCenterRow(
                        fieldName: 'PAN number', fieldValue: 'AFZPK8793K'),
                    FieldValueCenterRow(
                        fieldName: 'Bank a/c name',
                        fieldValue: 'Arvind Suradkar'),
                    FieldValueCenterRow(
                        fieldName: 'Bank a/c number',
                        fieldValue: '31969292728'),
                    FieldValueCenterRow(
                        fieldName: 'IFS code', fieldValue: 'SBIN0002182'),
                  ],
                ),
              ),
              ProfileExpandingCard(
                title: 'Around Me Lists',
                childHeight: 120,
                child: SeparatedColumn(
                  separatorBuilder: () => const SizedBox(height: 10),
                  children: [
                    CustomCheckbox(
                        label: 'Show me as ad designer',
                        isChecked: false,
                        onChange: () {}),
                    CustomCheckbox(
                        label: 'Show me as blood donor',
                        isChecked: false,
                        onChange: () {}),
                    CustomCheckbox(
                        label: 'Show me as snake catecher',
                        isChecked: false,
                        onChange: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
