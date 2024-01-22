import 'package:beauty_store/core/constant/color.dart';
import 'package:beauty_store/core/constant/dimensions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/strings.dart';
import '../../../../widget/custom_text.dart';

class CartItems extends StatefulWidget {
  const CartItems({Key? key}) : super(key: key);

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(120),
      width: getProportionateScreenWidth(350),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
            vertical: getProportionateScreenHeight(8)),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  height: getProportionateScreenHeight(103),
                  width: getProportionateScreenWidth(140),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.blueshade200,
                  ),
                ),
              ],
            ),
            SizedBox(width: getProportionateScreenWidth(20)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextNunitoSansCenter(
                    inputText: StaticText.item,
                    fontSize: 15,
                    weight: FontWeight.w700,
                    colorName: AppColors.blackColor),
                customTextNunitoSansCenter(
                    inputText: StaticText.fact,
                    fontSize: 10,
                    weight: FontWeight.w700,
                    colorName: AppColors.greyColor),
                SizedBox(height: getProportionateScreenHeight(36)),
                Row(
                
                  children: [
                    customTextNunitoSansCenter(
                        inputText: StaticText.amount,
                        fontSize: 20,
                        weight: FontWeight.w700,
                        colorName: AppColors.blueshade400),
                        SizedBox(width: getProportionateScreenWidth(50),),
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
                
              ],
            )

          ],
        ),
      ),
    );
  }
}
