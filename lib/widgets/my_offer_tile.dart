import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/models/item_status_tags.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/item_status_tag.dart';
import 'package:divyam_excel/widgets/neu_container.dart';

class MyOfferTile extends StatelessWidget {
  const MyOfferTile({super.key});

  @override
  Widget build(BuildContext context) {
    return NeuContainer(
      padding: const EdgeInsets.all(10),
      childWidget: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                color: Colors.black12,
              ),
            ),
          ),
          const VerticalDivider(width: 10),
          const Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ItemStatusTag(itemStatus: ItemStatus.pending),
                SizedBox(height: 5),
                BodyText(
                  text: '50% off on Branded...',
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 5),
                BodyText(
                  text: 'We are offering 50% off on various brands.',
                  fontSize: 13,
                ),
                SizedBox(height: 5),
                BodyText(
                  text: 'Ghawalkar Dresses',
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: kBodyTextColor,
                      size: 16,
                    ),
                    SizedBox(width: 3),
                    BodyText(text: '0'),
                    SizedBox(width: 8),
                    Icon(
                      Icons.share,
                      color: kBodyTextColor,
                      size: 16,
                    ),
                    SizedBox(width: 3),
                    BodyText(text: '0'),
                    SizedBox(width: 8),
                    Icon(
                      Icons.remove_red_eye,
                      color: kBodyTextColor,
                      size: 16,
                    ),
                    SizedBox(width: 3),
                    BodyText(text: '20'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
