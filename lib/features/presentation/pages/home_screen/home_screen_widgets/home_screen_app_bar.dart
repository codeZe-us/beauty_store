import 'package:beauty_store/core/constant/color.dart';
import 'package:beauty_store/core/constant/dimensions.dart';
import 'package:flutter/material.dart';

import '../../../../widget/home_search_bar.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: getProportionateScreenWidth(15), right: getProportionateScreenWidth(23)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: getProportionateScreenHeight(80)),
          Row(
            children: [
              const Icon(Icons.menu, color: AppColors.blackshade200, size: 30),
              SizedBox(width: getProportionateScreenWidth(20)),
              const HomeSearchBar(),
            ],
          ),
          const Icon(Icons.notifications_none,
              color: AppColors.blackshade200, size: 30),

        ],
      ),
    );
  }
}
