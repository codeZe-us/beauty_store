import 'package:beauty_store/core/constant/color.dart';
import 'package:beauty_store/features/presentation/pages/product_details__screen/product_details_widget/description.dart';
import 'package:beauty_store/features/presentation/pages/product_details__screen/product_details_widget/product_details_appbar.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/dimensions.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {


  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductDetailsAppBar(),
            Description(productName: '', productImage: '', amount: 10,

            ),
          ],
        ),
      ),
    );
  }
}
