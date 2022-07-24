abstract class Beverage {
  double get cost;
  String get ingredients;
}

class Ingredient {
  double cost;
  String name;

  Ingredient(this.name, this.cost);

  @override
  String toString() => name;
}

Ingredient coffee = Ingredient('coffee', 0.25);
Ingredient milk = Ingredient('milk', 0.5);
Ingredient sugar = Ingredient('sugar', 0.1);

class Coffee implements Beverage {
  final Set<Ingredient> _ingredients = {coffee, milk, sugar};

  @override
  double get cost =>
      _ingredients.fold(0, (total, ingredient) => total + ingredient.cost);

  @override
  String get ingredients {
    String stringIngredients =
        _ingredients.fold<String>('', (total, ingredient) {
      if (_ingredients.last.name == ingredient.name) {
        return total + 'and ${ingredient.name}';
      }
      return total + '${ingredient.name}, ';
    });

    return stringIngredients;
  }
}

class StarbucksCoffeeDecorator implements Beverage {
  final Beverage _coffee = Coffee();

  @override
  double get cost => _coffee.cost * 5;

  @override
  String get ingredients => _coffee.ingredients;
}
