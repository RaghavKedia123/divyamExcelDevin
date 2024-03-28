import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/my_newspapers_tile.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';

class MyNewspapersScreen extends StatefulWidget {
  const MyNewspapersScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<MyNewspapersScreen> createState() => _MyNewspapersScreenState();
}

class _MyNewspapersScreenState extends State<MyNewspapersScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'My Newspapers',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          height: 34,
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(34),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              BodyText(
                text: 'Add Newspaper',
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
      ),
      body: MainContainer(
        childWidget: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: screenWidth * 0.05,
          ),
          // wrap the following with grid widget (flutter_layout_grid)
          child: const Row(
            children: [
              Expanded(child: MyNewspapersTile()),
              SizedBox(width: 10),
              Expanded(child: MyNewspapersTile()),
            ],
          ),
        ),
      ),
    );
  }
}
