import 'package:beauty_store/core/constant/color.dart';
import 'package:beauty_store/core/constant/dimensions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/strings.dart';
import '../../../../widget/custom_text.dart';

class PaymentAppBar extends StatefulWidget {
  const PaymentAppBar({super.key});

  @override
  State<PaymentAppBar> createState() => _PaymentAppBarState();
}

class _PaymentAppBarState extends State<PaymentAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          const Icon(Icons.arrow_back_ios,
              size: 20, color: AppColors.greyColor),
          SizedBox(width: getProportionateScreenWidth(70)),
          customTextNunitoSansCenter(
              inputText: StaticText.paymentmethod,
              fontSize: 20,
              weight: FontWeight.w800,
              colorName: AppColors.blackColor),

              
        ],
      ),
    );
  }
}
