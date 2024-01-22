import 'package:flutter/material.dart';

import '../../../../core/constant/dimensions.dart';
import '../../core/constant/color.dart';
import '../../core/constant/strings.dart';

class CustomSearchBar extends StatefulWidget {
  final double width;
  final double height;

  const CustomSearchBar({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: const BoxDecoration(
        color: AppColors.gryshade50,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: TextFormField(
        maxLines: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            top: getProportionateScreenHeight(5),
            bottom: getProportionateScreenHeight(5),
            right: getProportionateScreenWidth(5),
          ),
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
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
