import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/custom_text_button.dart';
import 'package:divyam_excel/widgets/custom_text_input.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/components/custom_appbar.dart';
import 'package:divyam_excel/widgets/main_container.dart';
import 'package:divyam_excel/widgets/custom_submit_button.dart';

class ConvertDiamondsToCoinsScreen extends StatefulWidget {
  const ConvertDiamondsToCoinsScreen({
    super.key,
    required this.onToggleSideMenu,
  });

  final void Function() onToggleSideMenu;

  @override
  State<ConvertDiamondsToCoinsScreen> createState() =>
      _ConvertDiamondsToCoinsScreenState();
}

class _ConvertDiamondsToCoinsScreenState
    extends State<ConvertDiamondsToCoinsScreen> {
  bool gstInvoiceIsChecked = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // List<Widget> gstFields = [
    //   const SizedBox(height: 20),
    //   const CustomTextInput(hintText: 'Enter GST number'),
    //   const SizedBox(height: 20),
    //   const CustomTextInput(hintText: 'Confirm GST number'),
    // ];

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(
        titleText: 'Diamonds to Coins',
        onToggleSideMenu: widget.onToggleSideMenu,
      ),
      body: MainContainer(
        childWidget: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: screenWidth * 0.1,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const BodyText(
                  text: 'Available Bonus Diamonds Balance',
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 10),
                const BodyText(
                  text: '1500',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 30),
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BodyText(
                      text: 'Notes:',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.left,
                    ),
                    BodyText(
                      text: 'Recharge Coins will be non-refundable',
                      fontSize: 13,
                    ),
                    BodyText(
                      text: 'Recharge Coins can only be used to post offers',
                      fontSize: 13,
                    ),
                    BodyText(
                      text: '18% GST will be applicable',
                      fontSize: 13,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const CustomTextInput(hintText: 'Number of Coins to purchase'),
                const SizedBox(height: 30),
                const CustomSubmitButton(buttonText: 'Next'),
                const SizedBox(height: 30),
                // const BodyText(
                //   text: '100 Coins = 100 ₹',
                //   fontWeight: FontWeight.w600,
                // ),
                // const SizedBox(height: 20),
                // const Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Expanded(
                //       flex: 3,
                //       child: BodyText(
                //         text: 'Amount to be converted into coins',
                //         textAlign: TextAlign.right,
                //       ),
                //     ),
                //     Expanded(
                //       flex: 1,
                //       child: BodyText(
                //         text: '84',
                //         textAlign: TextAlign.right,
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 10),
                // const Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Expanded(
                //       flex: 3,
                //       child: BodyText(
                //         text: '18% GST',
                //         textAlign: TextAlign.right,
                //       ),
                //     ),
                //     Expanded(
                //       flex: 1,
                //       child: BodyText(
                //         text: '16',
                //         textAlign: TextAlign.right,
                //       ),
                //     ),
                //   ],
                // ),
                // const Divider(
                //   color: kBodyTextColor,
                // ),
                // const Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Expanded(
                //       flex: 3,
                //       child: BodyText(
                //         text: 'TOTAL',
                //         fontWeight: FontWeight.w600,
                //         textAlign: TextAlign.right,
                //       ),
                //     ),
                //     Expanded(
                //       flex: 1,
                //       child: BodyText(
                //         text: '100',
                //         fontWeight: FontWeight.w600,
                //         textAlign: TextAlign.right,
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 20),
                // const BodyText(
                //   text: '84 ₹ = 84 Coins',
                //   fontWeight: FontWeight.w600,
                // ),
                // const SizedBox(height: 30),
                // CustomCheckbox(
                //   label: 'I want invoice with GST',
                //   isChecked: gstInvoiceIsChecked,
                //   onChange: () {
                //     setState(() {
                //       gstInvoiceIsChecked = !gstInvoiceIsChecked;
                //     });
                //   },
                // ),
                // if (gstInvoiceIsChecked) ...gstFields,
                // const SizedBox(height: 30),
                // const CustomSubmitButton(buttonText: 'Make Payment'),
                const SizedBox(height: 30),
                const CustomTextButton(buttonText: '< GO BACK'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
