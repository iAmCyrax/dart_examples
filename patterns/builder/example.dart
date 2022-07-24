import 'builder.dart';

void main() {
  var pizzaBuilder = PizzaBuilder(8);

  pizzaBuilder.crust = 'deep dish';
  pizzaBuilder.toppings = Set.from(['pepperoni']);

  var plainPizza = Pizza(pizzaBuilder);
  print('Behold! $plainPizza.');
  assert(plainPizza.toString() == 'A delicous 8" pizza with deep dish crust covered in pepperoni and cheese');

  pizzaBuilder.crust = 'gold plated';
  pizzaBuilder.diameter = 72;
  pizzaBuilder.toppings = Set.from(['anchovies', 'caviar', 'diamonds']);

  var luxuriousPizza = pizzaBuilder.build();
  print('Wow! $luxuriousPizza? Someone is rich!');
  assert(luxuriousPizza.toString() == 'A delicous 72" pizza with gold plated crust covered in anchovies, caviar, diamonds, and cheese');
}
