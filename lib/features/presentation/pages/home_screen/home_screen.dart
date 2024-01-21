import 'package:beauty_store/features/presentation/pages/home_screen/home_screen_widgets/all_categories.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/dimensions.dart';
import 'home_screen_widgets/home_screen_app_bar.dart';
import 'home_screen_widgets/new_arrivals.dart';
import 'home_screen_widgets/popular_product.dart';
import 'home_screen_widgets/promotion_banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeScreenAppBar(),
              const AllCategoriesHome(),
              SizedBox(height: getProportionateScreenHeight(20)),
              const Promotions(),
              SizedBox(height: getProportionateScreenHeight(20)),
              const HomePopularProduct(),
              SizedBox(height: getProportionateScreenHeight(20)),
              const HomeNewArrivals()
            ],
          ),
        ),
      ),
    );
  }
}
