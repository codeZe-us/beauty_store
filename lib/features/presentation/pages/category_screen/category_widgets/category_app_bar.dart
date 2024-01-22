import 'package:beauty_store/features/widget/custom_search_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/color.dart';
import '../../../../../core/constant/dimensions.dart';
import '../../../../../core/constant/strings.dart';
import '../../../../widget/custom_text.dart';

class CategoryAppBar extends StatefulWidget {
  const CategoryAppBar({super.key});

  @override
  State<CategoryAppBar> createState() => _CategoryAppBarState();
}

class _CategoryAppBarState extends State<CategoryAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(23)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: getProportionateScreenHeight(20)),
          Center(
            child: customTextNunitoSansCenter(
                inputText: StaticText.allCategories,
                fontSize: 20,
                weight: FontWeight.w800,
                colorName: AppColors.blackColor),
          ),
          SizedBox(height: getProportionateScreenHeight(15)),
          CustomSearchBar(
            width: getProportionateScreenWidth(320),
            height: getProportionateScreenHeight(43),
          ),
        ],
      ),
    );
  }
}
