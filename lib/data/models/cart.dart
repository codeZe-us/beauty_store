class Cart {
  int id;
  int userId;
  DateTime date;
  List<ProductQuantity> products;

  Cart({
    required this.id,
    required this.userId,
    required this.date,
    required this.products,
  });

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

class ProductQuantity {
  int productId;
  int quantity;

  ProductQuantity({required this.productId, required this.quantity});

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
