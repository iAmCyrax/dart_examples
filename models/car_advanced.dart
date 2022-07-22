// Superclass
class Car {
  final String name;
  final DateTime created;
  final int money;

  Car({
    required this.name,
    required this.created,
    required this.money,
  });

  Car.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        created = json['created'] as DateTime,
        money = json['money'] as int;

  void describe() {
    print('CAR\n$name, ${created.year}, \$$money');
  }

  int getYears() {
    DateTime now = DateTime.now();

    return now.year - created.year;
  }
}

class FlyingCar extends Car {
  FlyingCar({
    required super.name,
    required super.created,
    required super.money,
  });

  @override
  void describe() {
    print('FLYING CAR\n$name, ${created.year}, \$$money');
  }
}
