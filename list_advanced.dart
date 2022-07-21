import 'models/car.dart';

void main() {
  List<Car> cars = <Car>[
    Car(
      model: CarModel.audi,
      name: 'Q5',
      money: 1000000,
    ),
    Car(
      model: CarModel.toyota,
      name: 'Corolla',
      money: 50000,
      isSecondHand: false,
    ),
    Car(
      model: CarModel.mercedes,
      name: 'Benz C 180',
      money: 300000,
    ),
  ];

  final carsAny = cars.any((element) => element.isSecondHand == true);
  final resultCount = cars.where((element) => element.isSecondHand == true);

  print(carsAny);

  resultCount.forEach((element) {
    print(element);
  });

  final Car newCar = Car(
    model: CarModel.mercedes,
    name: 'Benz C 180',
    money: 300000,
  );

  bool hasCar = cars.contains(newCar);

  if (hasCar) {}
}
