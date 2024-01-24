import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constant/color.dart';
import '../../../../../core/constant/dimensions.dart';
import '../../../../../core/constant/strings.dart';
import '../../../../../domain/entities/categories.dart';
import '../../../../widget/custom_text.dart';
import '../../../logic/category_bloc/category_bloc.dart';
import '../../../logic/category_bloc/category_event.dart';
import '../../../logic/category_bloc/category_state.dart';


class AllCategoriesHome extends StatelessWidget {
  const AllCategoriesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allCategoriesBloc = BlocProvider.of<AllCategoriesBloc>(context); // Use the correct bloc

    // Load categories when the screen is built
    allCategoriesBloc.add(GetAllCategoriesEvent()); // Use the correct event

    return BlocBuilder<AllCategoriesBloc, AllCategoriesState>(
      builder: (context, state) {
        if (state is GetAllCategoriesState) {
          List<Category>? categories = state.categoriesList;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(20),
                  right: getProportionateScreenWidth(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customTextNunitoSansCenter(
                      inputText: StaticText.allCategories,
                      fontSize: 20,
                      weight: FontWeight.w700,
                      colorName: AppColors.blackColor,
                    ),
                    customTextNunitoSansCenter(
                      inputText: StaticText.seeAll,
                      fontSize: 15,
                      weight: FontWeight.w700,
                      colorName: AppColors.blueshade400,
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Padding(
                padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
                child: SizedBox(
                  height: getProportionateScreenHeight(115),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories?.length ?? 0,
                    itemBuilder: (context, index) {
                      Category category = categories![index];

                      return Padding(
                        padding: EdgeInsets.only(
                          right: getProportionateScreenWidth(13),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: getProportionateScreenHeight(80),
                              width: getProportionateScreenWidth(80),
                              decoration: const BoxDecoration(
                                color: AppColors.blueshade200,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(13),
                                ),
                              ),
                            ),
                            SizedBox(height: getProportionateScreenHeight(10)),
                            customTextNunitoSansCenter(
                              inputText: category.name,
                              fontSize: 12,
                              weight: FontWeight.w700,
                              colorName: AppColors.blackColor,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          );
        } else if (state is AllCategoriesErrorState) {
          return Center(
            child: Text(state.categoriesErrorMessage),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
