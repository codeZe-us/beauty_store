import 'package:beauty_store/core/constant/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core/constant/color.dart';
import '../../../../../core/constant/strings.dart';
import '../../../../widget/custom_button.dart';
import '../../../../widget/custom_text.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customTextNunitoSansCenter(
                  inputText: StaticText.item,
                  fontSize: 20,
                  weight: FontWeight.w700,
                  colorName: AppColors.blackColor),
              SizedBox(width: getProportionateScreenWidth(10)),
              RatingBar.builder(
                initialRating: 5,
                itemSize: 20,
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
              fontSize: 20,
              weight: FontWeight.w700,
              colorName: AppColors.blueshade400),
          SizedBox(height: getProportionateScreenHeight(20)),
          customTextNunitoSansCenter(
              inputText: StaticText.selectSize,
              fontSize: 15,
              weight: FontWeight.w800,
              colorName: AppColors.blackColor),
          SizedBox(height: getProportionateScreenHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: getProportionateScreenHeight(17),
                    width: getProportionateScreenWidth(45),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.blueshade200),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(3)),
                        child: Row(
                          children: [
                            customTextNunitoSansCenter(
                                inputText: StaticText.first,
                                fontSize: 10,
                                weight: FontWeight.w700,
                                colorName: AppColors.blackColor),
                            SizedBox(width: getProportionateScreenWidth(3)),
                            customTextNunitoSansCenter(
                                inputText: StaticText.gm,
                                fontSize: 10,
                                weight: FontWeight.w700,
                                colorName: AppColors.blackColor),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(25)),
                  Container(
                    height: getProportionateScreenHeight(17),
                    width: getProportionateScreenWidth(45),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.blueshade200),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(3)),
                        child: Row(
                          children: [
                            customTextNunitoSansCenter(
                                inputText: StaticText.second,
                                fontSize: 10,
                                weight: FontWeight.w700,
                                colorName: AppColors.blackColor),
                            SizedBox(width: getProportionateScreenWidth(3)),
                            customTextNunitoSansCenter(
                                inputText: StaticText.gm,
                                fontSize: 10,
                                weight: FontWeight.w700,
                                colorName: AppColors.blackColor),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(25)),
                  Container(
                    height: getProportionateScreenHeight(17),
                    width: getProportionateScreenWidth(45),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.blueshade200),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(3)),
                        child: Row(
                          children: [
                            customTextNunitoSansCenter(
                                inputText: StaticText.third,
                                fontSize: 10,
                                weight: FontWeight.w700,
                                colorName: AppColors.blackColor),
                            SizedBox(width: getProportionateScreenWidth(3)),
                            customTextNunitoSansCenter(
                                inputText: StaticText.gm,
                                fontSize: 10,
                                weight: FontWeight.w700,
                                colorName: AppColors.blackColor),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: getProportionateScreenWidth(17),
                    height: getProportionateScreenHeight(17),
                    color: AppColors.blueshade400,
                    child: const Center(
                      child: Icon(Icons.remove,
                          size: 15, color: AppColors.primaryColor),
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(10)),
                  customTextNunitoSansCenter(
                      inputText: StaticText.no,
                      fontSize: 15,
                      weight: FontWeight.w700,
                      colorName: AppColors.blackColor),
                  SizedBox(width: getProportionateScreenWidth(10)),
                  Container(
                    width: getProportionateScreenWidth(17),
                    height: getProportionateScreenHeight(17),
                    color: AppColors.blueshade400,
                    child: const Center(
                      child: Icon(Icons.add,
                          size: 15, color: AppColors.primaryColor),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(25)),
          customTextNunitoSansCenter(
              inputText: StaticText.product,
              fontSize: 15,
              weight: FontWeight.w800,
              colorName: AppColors.blackColor),
          SizedBox(height: getProportionateScreenHeight(6)),
          customTextNunitoSansCenter(
              inputText: StaticText.describe,
              fontSize: 13,
              weight: FontWeight.w700,
              colorName: AppColors.blackColor),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PrimaryButton(
                buttonTitle: StaticText.cart,
                enableButton: true,
                buttonColor: AppColors.blueshade400,
                splashColor: AppColors.greyColor,
                buttonHeight: getProportionateScreenHeight(32),
                butttonWidth: getProportionateScreenWidth(150),
                onPressed: () {},
              ),
              PrimaryButton(
                buttonTitle: StaticText.buy,
                enableButton: true,
                buttonColor: AppColors.blueshade200,
                splashColor: AppColors.greyColor,
                buttonHeight: getProportionateScreenHeight(32),
                butttonWidth: getProportionateScreenWidth(150),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
