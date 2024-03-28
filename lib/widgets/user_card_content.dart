import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/neu_button_small.dart';

class UserCardContent extends StatelessWidget {
  const UserCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Image.asset('assets/images/divyam_excel.png'),
              const SizedBox(height: 10),
              AspectRatio(
                aspectRatio: 1 / 1,
                child: Container(
                  color: Colors.black12,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 120,
                width: 120,
                color: Colors.black12,
              ),
              const SizedBox(height: 20),
              const BodyText(
                text: 'Arvind Suradkar',
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
              const SizedBox(height: 10),
              const BodyText(
                text: '9876543210',
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              const SizedBox(height: 15),
              const BodyText(
                text: 'Join me on Divyam Excel',
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NeuButtonSmall(
              icon: UniconsLine.whatsapp_alt,
              iconColor: Color(0xFF1FAF38),
              buttonSize: 30,
            ),
            NeuButtonSmall(
              icon: UniconsLine.facebook,
              iconColor: Color(0xFF1877F2),
              buttonSize: 30,
            ),
            NeuButtonSmall(
              icon: UniconsLine.comment_alt_dots,
              iconColor: Color(0xFF009688),
              buttonSize: 30,
            ),
            NeuButtonSmall(
              icon: UniconsLine.instagram_alt,
              iconColor: Color(0xFFFF543E),
              buttonSize: 30,
            ),
            NeuButtonSmall(
              icon: UniconsLine.share_alt,
              iconColor: Color(0xFFB49219),
              buttonSize: 30,
            ),
          ],
        ),
      ],
    );
  }
}
