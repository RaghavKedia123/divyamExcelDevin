import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:flutter/material.dart';

class ProfileExpandingCard extends StatefulWidget {
  const ProfileExpandingCard({
    super.key,
    required this.title,
    this.showEditIcon = false,
    required this.childHeight,
    required this.child,
  });

  final String title;
  final bool showEditIcon;
  final double childHeight;
  final Widget child;

  @override
  State<ProfileExpandingCard> createState() => _ProfileExpandingCardState();
}

class _ProfileExpandingCardState extends State<ProfileExpandingCard> {
  bool isCardExpanded = false;
  bool isContentVisible = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: const EdgeInsets.all(10),
      height: isCardExpanded
          ? widget.childHeight + (widget.showEditIcon ? 45 : 20)
          : 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kBgColor,
        boxShadow: const [
          BoxShadow(
            offset: Offset(-2, -2),
            blurRadius: 4,
            color: Color(0xDDFFFFFF),
          ),
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 4,
            color: Color(0x22000000),
          ),
        ],
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isCardExpanded = !isCardExpanded;
              });
              if (isCardExpanded) {
                Future.delayed(const Duration(milliseconds: 200), () {
                  setState(() {
                    isContentVisible = true;
                  });
                });
              } else {
                setState(() {
                  isContentVisible = false;
                });
              }
            },
            child: Row(
              children: [
                const Icon(
                  Icons.remove_circle_outline,
                  color: kPrimaryColor,
                  size: 20,
                ),
                const SizedBox(width: 5),
                BodyText(
                  text: widget.title,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ),
          isCardExpanded
              ? Visibility(
                  visible: isContentVisible,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      widget.showEditIcon
                          ? const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.edit,
                                    size: 20, color: kPrimaryColor),
                              ],
                            )
                          : const SizedBox.shrink(),
                      widget.showEditIcon
                          ? const SizedBox(height: 5)
                          : const SizedBox.shrink(),
                      widget.child,
                    ],
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
