import 'package:beauty_store/core/constant/dimensions.dart';
import 'package:beauty_store/features/presentation/pages/category_screen/category_widgets/all_items.dart';
import 'package:beauty_store/features/presentation/pages/category_screen/category_widgets/best_deals.dart';
import 'package:beauty_store/features/presentation/pages/category_screen/category_widgets/popular_items.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/color.dart';
import '../../../../../core/constant/strings.dart';
import '../../../../widget/custom_text.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                child: InkWell(
                  splashColor: AppColors.greyColor,
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  child: customTextNunitoSansCenter(
                    inputText: StaticText.allItem,
                    fontSize: 15,
                    weight: FontWeight.w700,
                    colorName: (selectedIndex == 0)
                        ? AppColors.blueshade400
                        : AppColors.blackColor,
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(44)),
              GestureDetector(
                child: InkWell(
                  splashColor: AppColors.greyColor,
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: customTextNunitoSansCenter(
                    inputText: StaticText.popItem,
                    fontSize: 15,
                    weight: FontWeight.w700,
                    colorName: (selectedIndex == 1)
                        ? AppColors.blueshade400
                        : AppColors.blackColor,
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(44)),
              GestureDetector(
                child: InkWell(
                  splashColor: AppColors.greyColor,
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  child: customTextNunitoSansCenter(
                    inputText: StaticText.bestDeal,
                    fontSize: 15,
                    weight: FontWeight.w700,
                    colorName: (selectedIndex == 2)
                        ? AppColors.blueshade400
                        : AppColors.blackColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
            child: IndexedStack(
              index: selectedIndex,
              children: const [
                AllItems(),
                PopularItems(),
                BestDeals(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
