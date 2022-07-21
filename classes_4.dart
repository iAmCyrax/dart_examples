import 'models/doer.dart';
import 'models/person.dart';
import 'models/vehicle.dart';

void main() {
  List<Doer> doers = <Doer>[
    EffectiveDoer(),
    Doer2(),
    Doer3(),
  ];

  // doers.forEach((element) {
  //   element.doSth();
  // });

  String greetBob(Person person) => person.greet('Bob');

  // print(greetBob(Person('Kathy')));
  // print(greetBob(Impostor()));

  Vehicle vehicle1 = Vehicle.car;
  Vehicle vehicle2 = Vehicle.bus;
  Vehicle vehicle3 = Vehicle.bicycle;

  print(vehicle1.compareTo(vehicle2));
}
