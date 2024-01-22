import 'package:beauty_store/core/constant/color.dart';
import 'package:beauty_store/core/constant/dimensions.dart';
import 'package:flutter/material.dart';

import '../../../../widget/custom_text.dart';

class CustomPaymentMethod extends StatelessWidget {
  final String imagePath;
  final String buttonText;
  final int radioValue;
  final Function(int) onChanged;
  final bool isSelected;

  const CustomPaymentMethod({
    Key? key,
    required this.imagePath,
    required this.buttonText,
    required this.radioValue,
    required this.onChanged,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(50),
      width: getProportionateScreenWidth(340),
      decoration: BoxDecoration(
        color: AppColors.greyshade50,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: AppColors.greyshade50),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(imagePath, width: 25),
                SizedBox(width: getProportionateScreenWidth(30)),
                customTextNunitoSansCenter(
                  inputText: buttonText,
                  fontSize: 15,
                  weight: FontWeight.w800,
                  colorName: AppColors.blackColor,
                ),
              ],
            ),
            Radio(
              activeColor: AppColors.blueshade400,
              value: radioValue,
              groupValue: isSelected ? radioValue : null,
              onChanged: (value) {
                if (!isSelected) {
                  onChanged(radioValue);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
