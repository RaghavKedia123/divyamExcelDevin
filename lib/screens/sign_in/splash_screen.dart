import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Image.asset('assets/images/de_splash.png'),
      ),
    );
  }
}
