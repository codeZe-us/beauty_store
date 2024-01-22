import 'package:beauty_store/core/constant/dimensions.dart';
import 'package:flutter/material.dart';

import 'cart_items.dart';

class CartItemList extends StatefulWidget {
  const CartItemList({super.key});

  @override
  State<CartItemList> createState() => _CartItemListState();
}

class _CartItemListState extends State<CartItemList> {
  @override
  Widget build(BuildContext context) {
   return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(12)),
          child: const CartItems(),
        );
      }
   );
  }
}