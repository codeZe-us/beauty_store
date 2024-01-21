import 'package:flutter/material.dart';

import '../../../../core/constant/dimensions.dart';
import '../../core/constant/color.dart';
import '../../core/constant/strings.dart';

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({super.key});

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(240),
      height: getProportionateScreenHeight(43),
      decoration: const BoxDecoration(
          color: AppColors.gryshade50,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: TextFormField(
        maxLines: 1,
        decoration:  InputDecoration(
          contentPadding: EdgeInsets.only(left: getProportionateScreenWidth(20), top: getProportionateScreenHeight(5), bottom: getProportionateScreenHeight(5), right: getProportionateScreenWidth(5)),
            hintText: StaticText.search,
            focusColor: AppColors.blueshade200,
            hintStyle: const TextStyle(
              color: AppColors.greyshade300,
            ),
            suffixIcon: const Icon(
              Icons.search,
              color: AppColors.blackColor,
            ),
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(15)))),
      ),
    );
  }
}
