class Car {
  final CarModel model;
  final String name;
  final int money;
  bool isSecondHand;

  Car({
    required this.model,
    required this.name,
    required this.money,
    this.isSecondHand = true,
  });

  @override
  String toString() {
    final secondHand = isSecondHand ? 'Yes' : 'No';
    return '${model.toString()} $name - \$$money - Second Hand: $secondHand';
  }
}

enum CarModel {
  bmw,
  toyota,
  audi,
  mercedes;

  @override
  String toString() {
    return '$name';
  }
}
