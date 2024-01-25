import 'package:beauty_store/features/presentation/pages/category_screen/category_widgets/all_items.dart';
import 'package:beauty_store/features/presentation/pages/category_screen/category_widgets/best_deals.dart';
import 'package:beauty_store/features/presentation/pages/category_screen/category_widgets/popular_items.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            indicator: BoxDecoration(color: Colors.transparent),
            indicatorWeight: 1,
            tabs: [
              Tab(text: 'All Item'),
              Tab(text: 'Popular Item'),
              Tab(text: 'Best deals'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AllItems(),
            PopularItems(),
            BestDeals(),
          ],
        ),
      ),
    );
  }
}