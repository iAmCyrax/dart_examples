import 'abstract_factory.dart';

enum Mood { done, sleepy }

void main() {
  Mood mood = Mood.done;
  DrinkFactory destination;

  switch (mood) {
    case Mood.sleepy:
      destination = CoffeeShop();
      break;

    case Mood.done:
      destination = Pub();
      break;
  }

  Drinkable beverage = destination.createDrink();

  beverage.pour();
}
