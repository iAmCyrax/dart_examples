import 'decorator.dart';

void main() {
  Coffee coffee = Coffee();
  StarbucksCoffeeDecorator starbucksCoffee = StarbucksCoffeeDecorator();

  print('Coffee contains ${coffee.ingredients}. It costs ${coffee.cost}');
  print(
      'Starbucks coffee contains ${starbucksCoffee.ingredients}. It costs ${starbucksCoffee.cost}');
}
