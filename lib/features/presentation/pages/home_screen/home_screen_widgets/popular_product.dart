import 'package:beauty_store/core/constant/color.dart';
import 'package:beauty_store/core/constant/strings.dart';
import 'package:beauty_store/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core/constant/dimensions.dart';
import '../../../../widget/custom_text.dart';
import '../../../logic/product_bloc/product_bloc.dart';
import '../../../logic/product_bloc/product_event.dart';
import '../../../logic/product_bloc/product_state.dart';
import '../../category_screen/categories_screen.dart';
import '../../product_details__screen/product_details.dart';

class HomePopularProduct extends StatelessWidget {
  const HomePopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    String truncateText(String text, int maxLength) {
      return text.length <= maxLength
          ? text
          : '${text.substring(0, maxLength)}...';
    }

    final allProviderBloc = BlocProvider.of<AllProductBloc>(context);

    allProviderBloc.add(GetAllProductEvent());
    return BlocBuilder<AllProductBloc, AllProductState>(
        builder: (context, state) {
      if (state is GetAllProductState) {
        List<ProductModel>? products = state.productList;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(20),
                  right: getProportionateScreenWidth(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextNunitoSansCenter(
                      inputText: StaticText.popular,
                      fontSize: 20,
                      weight: FontWeight.w700,
                      colorName: AppColors.blackColor),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CategoryScreen()),
                      );
                    },
                    child: InkWell(
                      splashColor: AppColors.greyColor,
                      child: customTextNunitoSansCenter(
                          inputText: StaticText.seeAll,
                          fontSize: 15,
                          weight: FontWeight.w700,
                          colorName: AppColors.blueshade400),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
              child: SizedBox(
                height: getProportionateScreenHeight(135),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products?.length ?? 0,
                  itemBuilder: (context, index) {
                    ProductModel product = products![index];
                    return Padding(
                      padding: EdgeInsets.only(
                          right: getProportionateScreenWidth(13)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductDetails(
                                    amount: product.price?.toInt() ?? 0,
                                    productName: product.title,
                                    productImage: product.image,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: getProportionateScreenHeight(100),
                              width: getProportionateScreenWidth(145),
                              decoration: const BoxDecoration(
                                  color: AppColors.blueshade200,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(13))),
                              child: Center(
                                child: Image.network(product.image),
                              ),
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(7)),
                          Row(
                            children: [
                              customTextNunitoSansCenter(
                                  inputText:
                                      truncateText(product.title ?? '', 5),
                                  fontSize: 9,
                                  weight: FontWeight.w900,
                                  colorName: AppColors.blackColor),
                              SizedBox(width: getProportionateScreenWidth(4)),
                              RatingBar.builder(
                                initialRating: 5,
                                itemSize: 10,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: AppColors.yellow,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                          customTextNunitoSansCenter(
                              inputText: product.price.toString(),
                              fontSize: 10,
                              weight: FontWeight.w900,
                              colorName: AppColors.blueshade400),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        );
      } else if (state is AllProductErrorState) {
        return Center(
          child: Text(state.productErrorMessage),
        );
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
