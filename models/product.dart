class Product {
  final String name;
  final int price;

  Product({
    required this.name,
    required this.price,
  });

  Product.jacket({required this.price}) : name = 'Jacket';

  factory Product.fromUser(User user) => user.product;

  void sell() {
    print('Selling...');
    print('Selled');
  }

  @override
  String toString() {
    return '$name - $price';
  }
}

class User {
  final String name;
  final int money;
  final Product product;

  User({
    required this.name,
    required this.money,
    required this.product,
  });

  @override
  String toString() {
    return '$name, $money, product: $product';
  }
}
