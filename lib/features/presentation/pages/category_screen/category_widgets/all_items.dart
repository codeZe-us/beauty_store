import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core/constant/color.dart';
import '../../../../../core/constant/dimensions.dart';
import '../../../../../data/models/product_model.dart';
import '../../../../widget/custom_text.dart';
import '../../../logic/product_bloc/product_bloc.dart';
import '../../../logic/product_bloc/product_event.dart';
import '../../../logic/product_bloc/product_state.dart';

class AllItems extends StatefulWidget {
  const AllItems({super.key});

  @override
  State<AllItems> createState() => _AllItemsState();
}

class _AllItemsState extends State<AllItems> {
  String truncateText(String text, int maxLength) {
      return text.length <= maxLength
          ? text
          : '${text.substring(0, maxLength)}...';
    }

  @override
  Widget build(BuildContext context) {
     final allProviderBloc = BlocProvider.of<AllProductBloc>(context);

    allProviderBloc.add(GetAllProductEvent());
      return BlocBuilder<AllProductBloc, AllProductState>(
        builder: (context, state) {
      if (state is GetAllProductState) {
        List<ProductModel>? products = state.productList;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(5)),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: SizeConfig.screenHeight,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: getProportionateScreenWidth(10),
           
              ),
              itemCount: products?.length ?? 0,
              itemBuilder: (context, index) {
                  ProductModel product = products![index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: getProportionateScreenHeight(100),
                      width: getProportionateScreenWidth(145),
                      decoration: const BoxDecoration(
                        color: AppColors.blueshade200,
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                      ),
                        child: Center(
                                child: Image.network(product.image),
                              ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(7)),
                    Row(
                      children: [
                        customTextNunitoSansCenter(
                          inputText:     truncateText(product.title ?? '', 5),
                          fontSize: 9,
                          weight: FontWeight.w900,
                          colorName: AppColors.blackColor,
                        ),
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
                      colorName: AppColors.blueshade400,
                    ),
                    
                  ],
                );
              },
            ),
          ),
        ],
      ),
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
        }
  
      );
  
  }
}
