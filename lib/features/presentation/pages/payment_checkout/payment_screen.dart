import 'package:beauty_store/core/constant/color.dart';
import 'package:beauty_store/core/constant/strings.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/assets_location.dart';
import '../../../../core/constant/dimensions.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_text.dart';
import 'payment_widget/custom_payment_method.dart';
import 'payment_widget/payment_app_bar.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selectedRadioValue = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(50)),
            const PaymentAppBar(),
            SizedBox(height: getProportionateScreenHeight(30)),
            CustomPaymentMethod(
              buttonText: StaticText.googlePay,
              imagePath: Assets.google,
              radioValue: 0,
              onChanged: onRadioChanged,
              isSelected: selectedRadioValue == 0,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            CustomPaymentMethod(
              buttonText: StaticText.applePay,
              imagePath: Assets.apple,
              radioValue: 1,
              onChanged: onRadioChanged,
              isSelected: selectedRadioValue == 1,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            CustomPaymentMethod(
              buttonText: StaticText.masterCard,
              imagePath: Assets.mastercard,
              radioValue: 2,
              onChanged: onRadioChanged,
              isSelected: selectedRadioValue == 2,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            CustomPaymentMethod(
              buttonText: StaticText.payPal,
              imagePath: Assets.paypal,
              radioValue: 3,
              onChanged: onRadioChanged,
              isSelected: selectedRadioValue == 3,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            CustomPaymentMethod(
              buttonText: StaticText.cashOnD,
              imagePath: Assets.deliver,
              radioValue: 4,
              onChanged: onRadioChanged,
              isSelected: selectedRadioValue == 4,
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 10,
                        backgroundColor: AppColors.blueshade400,
                        child: Center(
                          child: Icon(Icons.add,
                              color: AppColors.primaryColor, size: 20),
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(10)),
                      customTextNunitoSansCenter(
                          inputText: StaticText.addCard,
                          fontSize: 13,
                          weight: FontWeight.w800,
                          colorName: AppColors.blackColor),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(70)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(25)),
              child: Row(
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
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(25)),
              child: PrimaryButton(
                buttonTitle: StaticText.confirmPay,
                enableButton: true,
                buttonColor: AppColors.blueshade400,
                splashColor: AppColors.greyColor,
                buttonHeight: getProportionateScreenHeight(40),
                
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  void onRadioChanged(int value) {
    setState(() {
      selectedRadioValue = value;
    });
  }
}
