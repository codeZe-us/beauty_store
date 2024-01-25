import 'package:beauty_store/core/constant/color.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/dimensions.dart';
import 'category_widgets/category_app_bar.dart';
import 'category_widgets/category_list.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryAppBar(),
          
             Expanded(child: CategoryList())
          ],
        ),
      ),
    );
  }
}
