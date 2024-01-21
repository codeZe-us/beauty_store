import 'package:beauty_store/core/constant/color.dart';
import 'package:beauty_store/core/constant/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core/constant/dimensions.dart';
import '../../../../widget/custom_text.dart';

class HomePopularProduct extends StatelessWidget {
  const HomePopularProduct({super.key});

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
                  inputText: StaticText.popular,
                  fontSize: 20,
                  weight: FontWeight.w700,
                  colorName: AppColors.blackColor),
              customTextNunitoSansCenter(
                  inputText: StaticText.seeAll,
                  fontSize: 15,
                  weight: FontWeight.w700,
                  colorName: AppColors.blueshade400),
            ],
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(10)),
        Padding(
          padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
          child: SizedBox(
            height: getProportionateScreenHeight(135),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.only(right: getProportionateScreenWidth(13)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: getProportionateScreenHeight(100),
                        width: getProportionateScreenWidth(145),
                        decoration: const BoxDecoration(
                            color: AppColors.blueshade200,
                            borderRadius:
                                BorderRadius.all(Radius.circular(13))),
                      ),
                      SizedBox(height: getProportionateScreenHeight(7)),
                      Row(
                        children: [
                          customTextNunitoSansCenter(
                              inputText: StaticText.item,
                              fontSize: 9,
                              weight: FontWeight.w900,
                              colorName: AppColors.blackColor),
                          SizedBox(width: getProportionateScreenWidth(4)),
                          RatingBar.builder(
                            initialRating: 5,
                            itemSize: 10,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: AppColors.yellow,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      ),
                      customTextNunitoSansCenter(
                          inputText: StaticText.amount,
                          fontSize: 10,
                          weight: FontWeight.w900,
                          colorName: AppColors.blueshade400),
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
