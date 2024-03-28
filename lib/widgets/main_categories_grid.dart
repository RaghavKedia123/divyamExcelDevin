import 'package:flutter/material.dart';

import 'package:divyam_excel/widgets/main_category_tile.dart';

class MainCategoriesGrid extends StatelessWidget {
  const MainCategoriesGrid({
    super.key,
    required this.spacing,
  });

  final double spacing;

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      primary: false, // disables scrolling within grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1 / 1,
        crossAxisSpacing: spacing,
        mainAxisSpacing: spacing,
      ),
      children: const [
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
        MainCategoryTile(),
      ],
    );
  }
}
