import 'package:flutter/material.dart';

import 'package:divyam_excel/constants/colors.dart';
import 'package:divyam_excel/models/item_status_tags.dart';
import 'package:divyam_excel/widgets/body_text.dart';
import 'package:divyam_excel/widgets/item_status_tag.dart';
import 'package:divyam_excel/widgets/item_title.dart';
import 'package:divyam_excel/widgets/neu_container.dart';

class MyNewspapersTile extends StatelessWidget {
  const MyNewspapersTile({super.key});

  @override
  Widget build(BuildContext context) {
    return NeuContainer(
      padding: const EdgeInsets.all(10),
      childWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ItemStatusTag(itemStatus: ItemStatus.live),
          const SizedBox(height: 10),
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              color: Colors.black12,
            ),
          ),
          const SizedBox(height: 10),
          const ItemTitle(text: 'The Times of India'),
          const SizedBox(height: 5),
          const BodyText(text: '13-12-2023'),
          const SizedBox(height: 5),
          const SizedBox(height: 5),
          const Row(
            children: [
              Icon(
                Icons.share,
                color: kBodyTextColor,
                size: 16,
              ),
              SizedBox(width: 3),
              BodyText(text: '4.2'),
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
    );
  }
}