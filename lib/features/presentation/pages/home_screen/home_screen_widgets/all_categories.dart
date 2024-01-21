import 'package:beauty_store/core/constant/color.dart';
import 'package:beauty_store/core/constant/strings.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/dimensions.dart';
import '../../../../widget/custom_text.dart';

class AllCategoriesHome extends StatelessWidget {
  const AllCategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customTextNunitoSansCenter(
                  inputText: StaticText.allCategories,
                  fontSize: 20,
                  weight: FontWeight.w700,
                  colorName: AppColors.blackColor),
              customTextNunitoSansCenter(
                  inputText: StaticText.seeAll,
                  fontSize: 15,
                  weight: FontWeight.w500,
                  colorName: AppColors.blueshade400),
            ],
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        Padding(
          padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
          child: SizedBox(
            height: getProportionateScreenHeight(115),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.only(right: getProportionateScreenWidth(13)),
                  child: Column(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(80),
                        width: getProportionateScreenWidth(80),
                        decoration: const BoxDecoration(
                            color: AppColors.blueshade200,
                            borderRadius:
                                BorderRadius.all(Radius.circular(13))),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      customTextNunitoSansCenter(
                          inputText: StaticText.lipStick,
                          fontSize: 12,
                          weight: FontWeight.w700,
                          colorName: AppColors.blackColor),
                    ],
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
