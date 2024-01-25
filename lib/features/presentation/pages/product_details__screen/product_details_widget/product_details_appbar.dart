import 'package:beauty_store/core/constant/color.dart';
import 'package:beauty_store/core/constant/dimensions.dart';
import 'package:flutter/material.dart';

class ProductDetailsAppBar extends StatelessWidget {

  const ProductDetailsAppBar({
    Key? key,
  

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(300),
      width: SizeConfig.screenWidth,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          color: AppColors.blueshade200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getProportionateScreenWidth(50)),
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(25)),
            child: GestureDetector
            (
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios,
                  color: AppColors.blueshade400, size: 20),
            ),
              
          ),
          // Center(
          //   child: Image.network(productImage!)
          // )
        ],
      ),
      
    );
  }
}
