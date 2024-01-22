import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core/constant/color.dart';
import '../../../../../core/constant/dimensions.dart';
import '../../../../../core/constant/strings.dart';
import '../../../../widget/custom_text.dart';

class PopularItems extends StatefulWidget {
  const PopularItems({super.key});

  @override
  State<PopularItems> createState() => _PopularItemsState();
}

class _PopularItemsState extends State<PopularItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getProportionateScreenHeight(30)),
        SingleChildScrollView(
          child: SizedBox(
            height: SizeConfig.screenHeight,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: getProportionateScreenWidth(13),
                mainAxisSpacing: getProportionateScreenHeight(9),
              ),
              scrollDirection: Axis.vertical,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: getProportionateScreenHeight(100),
                      width: getProportionateScreenWidth(145),
                      decoration: const BoxDecoration(
                        color: AppColors.blueshade200,
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(7)),
                    Row(
                      children: [
                        customTextNunitoSansCenter(
                          inputText: StaticText.item,
                          fontSize: 9,
                          weight: FontWeight.w900,
                          colorName: AppColors.blackColor,
                        ),
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
                      colorName: AppColors.blueshade400,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
