import 'models/car_advanced.dart';

void main() {
  Car car = Car(
    name: 'Toyota',
    created: DateTime(1999),
    money: 100000,
  );

  Car flyingCar = FlyingCar(
    name: 'Flying',
    created: DateTime(2020),
    money: 40000000,
  );

  car.describe();
  flyingCar.describe();

  print(car.getYears());
  print(flyingCar.getYears());
}
