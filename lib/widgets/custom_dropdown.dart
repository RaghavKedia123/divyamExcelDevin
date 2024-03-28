import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({
    super.key,
    required this.selectLabel,
    required this.options,
  });

  final String selectLabel;
  final List<Map<String, String>> options;

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedOption;
  bool isExpanded = false;
  bool isOptionsVisible = false;
  double? dropdownHeight;

  @override
  void initState() {
    super.initState();
    selectedOption = widget.selectLabel;
  }

  @override
  Widget build(BuildContext context) {
    const double collapsedHeight = 48;
    const double optionHeight = 30;
    const double paddingVertical = 12;
    const int maxVisibleOptions = 5;

    widget.options.length <= maxVisibleOptions
        ? dropdownHeight =
            (widget.options.length * optionHeight) + (paddingVertical * 2)
        : dropdownHeight =
            (maxVisibleOptions * optionHeight) + (paddingVertical * 3);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: isExpanded ? dropdownHeight : collapsedHeight,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: paddingVertical,
      ),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isOptionsVisible
              ? SizedBox(
                  height: widget.options.length <= maxVisibleOptions
                      ? widget.options.length * optionHeight
                      : maxVisibleOptions * optionHeight + paddingVertical,
                  child: Scrollbar(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ...widget.options.map((option) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedOption = option.values.toList().first;
                                  isExpanded = false;
                                  isOptionsVisible = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 2,
                                  bottom: 8,
                                ),
                                child: BodyText(
                                  text: option.values.toList().first,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                  ),
                )
              : InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                    if (!isOptionsVisible) {
                      Future.delayed(const Duration(milliseconds: 250), () {
                        setState(() {
                          isOptionsVisible = !isOptionsVisible;
                        });
                      });
                    } else {
                      setState(() {
                        isOptionsVisible = !isOptionsVisible;
                      });
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BodyText(text: selectedOption!),
                      const Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
