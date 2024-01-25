import 'package:equatable/equatable.dart';

class Cart extends Equatable {
  final int id;
  final int userId;
  final DateTime date;
  final List<ProductQuantity> products;

  const Cart({
    required this.id,
    required this.userId,
    required this.date,
    required this.products,
  });

  @override
  List<Object?> get props => [id, userId, date, products];

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json['id'],
      userId: json['userId'],
      date: DateTime.parse(json['date']),
      products: (json['products'] as List<dynamic>)
          .map((productJson) => ProductQuantity.fromJson(productJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'date': date.toIso8601String(),
      'products': products.map((product) => product.toJson()).toList(),
    };
  }
}

class ProductQuantity extends Equatable {
  final int productId;
  final int quantity;

  const ProductQuantity({required this.productId, required this.quantity});

  @override
  List<Object?> get props => [productId, quantity];

  factory ProductQuantity.fromJson(Map<String, dynamic> json) {
    return ProductQuantity(
      productId: json['productId'],
      quantity: json['quantity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'quantity': quantity,
    };
  }
}
