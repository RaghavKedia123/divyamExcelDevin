import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:divyam_excel/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.titleText,
    this.onToggleSideMenu,
  });

  final String titleText;
  final void Function()? onToggleSideMenu;

  @override
  Size get preferredSize => const Size.fromHeight(40);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 40,
      backgroundColor: kPrimaryColor,
      leadingWidth: 66,
      scrolledUnderElevation:
          0, // stops appbar from changing color on scrolling
      leading: Row(
        children: [
          const SizedBox(width: 10),
          Image.asset('assets/images/de.png'),
        ],
      ),
      title: Text(
        titleText.toUpperCase(),
        style: GoogleFonts.inter(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: InkWell(
            onTap: () {},
            child: SideMenuButton(
              onToggleSideMenu: onToggleSideMenu,
            ),
          ),
        ),
      ],
      centerTitle: true,
    );
  }
}

class SideMenuButton extends StatefulWidget {
  const SideMenuButton({
    super.key,
    this.onToggleSideMenu,
  });

  final void Function()? onToggleSideMenu;

  @override
  State<SideMenuButton> createState() => _SideMenuButtonState();
}

class _SideMenuButtonState extends State<SideMenuButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Color darkShadow =
        isPressed ? const Color(0x66000000) : const Color(0x44000000);
    Color lightShadow =
        isPressed ? const Color(0xAAFFFFFF) : const Color(0x88FFFFFF);
    Offset shadowOffset = isPressed ? const Offset(2, 2) : const Offset(3, 3);
    double shadowBlur = isPressed ? 4.0 : 6.0;

    return Listener(
      onPointerUp: (_) {
        if (widget.onToggleSideMenu != null) {
          widget.onToggleSideMenu!();
        }
        return setState(() {
          isPressed = false;
        });
      },
      onPointerDown: (_) => setState(() {
        isPressed = true;
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: shadowOffset,
              blurRadius: shadowBlur,
              color: darkShadow,
              inset: isPressed,
            ),
            BoxShadow(
              offset: -shadowOffset,
              blurRadius: shadowBlur,
              color: lightShadow,
              inset: isPressed,
            ),
          ],
        ),
        child: const Center(
          child: Icon(
            Icons.menu,
            size: 26,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
