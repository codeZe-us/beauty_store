import 'package:beauty_store/core/constant/color.dart';
import 'package:beauty_store/core/constant/dimensions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/strings.dart';
import '../../../../widget/custom_text.dart';

class CartAppBar extends StatefulWidget {
  const CartAppBar({super.key});

  @override
  State<CartAppBar> createState() => _CartAppBarState();
}

class _CartAppBarState extends State<CartAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.arrow_back_ios,
            size: 20, color: AppColors.greyColor),
        SizedBox(width: getProportionateScreenWidth(100)),
        customTextNunitoSansCenter(
            inputText: StaticText.addCart,
            fontSize: 20,
            weight: FontWeight.w800,
            colorName: AppColors.blackColor),
      ],
    );
  }
}
