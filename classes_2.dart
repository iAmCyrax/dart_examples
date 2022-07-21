import 'models/product.dart';

void main() {
  Product product = Product(name: 'T-shirt', price: 50);
  Product jacket = Product.jacket(price: 40);

  print(product.name);
  print(product.price);
  print(jacket.name);
  print(jacket.price);
}