import 'package:beauty_store/core/constant/color.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/dimensions.dart';
import '../../../../core/constant/strings.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_text.dart';
import 'cart_widget/cart_item_list.dart';
import 'cart_widget/cart_screen_appbar.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
        SizeConfig.init(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              const CartAppBar(),
          
              const Expanded(
                child: CartItemList()),
                SizedBox(height: getProportionateScreenHeight(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextNunitoSansCenter(
                          inputText: StaticText.subtotal,
                          fontSize: 14,
                          weight: FontWeight.w800,
                          colorName: AppColors.blackColor),
                      SizedBox(height: getProportionateScreenHeight(9)),
                      customTextNunitoSansCenter(
                          inputText: StaticText.deliveryC,
                          fontSize: 14,
                          weight: FontWeight.w800,
                          colorName: AppColors.blackColor),
                      SizedBox(height: getProportionateScreenHeight(9)),
                      customTextNunitoSansCenter(
                          inputText: StaticText.dis,
                          fontSize: 14,
                          weight: FontWeight.w800,
                          colorName: AppColors.blackColor),
                      SizedBox(height: getProportionateScreenHeight(9)),
                      customTextNunitoSansCenter(
                          inputText: StaticText.totalTax,
                          fontSize: 14,
                          weight: FontWeight.w800,
                          colorName: AppColors.blackColor),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      customTextNunitoSansCenter(
                          inputText: StaticText.totalAm,
                          fontSize: 20,
                          weight: FontWeight.w800,
                          colorName: AppColors.blackshade200),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      customTextNunitoSansCenter(
                          inputText: StaticText.firstnum,
                          fontSize: 14,
                          weight: FontWeight.w800,
                          colorName: AppColors.blackColor),
                      SizedBox(height: getProportionateScreenHeight(9)),
                      customTextNunitoSansCenter(
                          inputText: StaticText.secondNum,
                          fontSize: 14,
                          weight: FontWeight.w800,
                          colorName: AppColors.blackColor),
                      SizedBox(height: getProportionateScreenHeight(9)),
                      customTextNunitoSansCenter(
                          inputText: StaticText.thirdNum,
                          fontSize: 14,
                          weight: FontWeight.w800,
                          colorName: AppColors.blackColor),
                      SizedBox(height: getProportionateScreenHeight(9)),
                      customTextNunitoSansCenter(
                          inputText: StaticText.fourthnum,
                          fontSize: 14,
                          weight: FontWeight.w800,
                          colorName: AppColors.blackColor),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      customTextNunitoSansCenter(
                          inputText: StaticText.fifthnum,
                          fontSize: 20,
                          weight: FontWeight.w800,
                          colorName: AppColors.blueshade400),
                    ],
                  ),
                ],
              ),
                 SizedBox(height: getProportionateScreenHeight(25)),
            PrimaryButton(
              buttonTitle: StaticText.placeorder,
              enableButton: true,
              buttonColor: AppColors.blueshade400,
              splashColor: AppColors.greyColor,
              buttonHeight: getProportionateScreenHeight(40),
              
              onPressed: () {},
            ),
            SizedBox(height: getProportionateScreenHeight(10))
            ],
          ),
        ),
      ),
    );
  }
}