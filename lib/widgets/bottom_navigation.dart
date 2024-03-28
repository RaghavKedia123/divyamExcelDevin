import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/bottom_navigation_menu_item.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 58,
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BottomNavigationMenuItem(
            icon: Icons.local_offer_outlined,
            label: 'Offers',
          ),
          BottomNavigationMenuItem(
            icon: Icons.store_outlined,
            label: 'Directory',
          ),
          BottomNavigationMenuItem(
            icon: Icons.newspaper,
            label: 'Highlights',
          ),
          BottomNavigationMenuItem(
            icon: Icons.event,
            label: 'Events',
          ),
        ],
      ),
    );
  }
}
