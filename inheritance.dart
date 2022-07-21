import 'classes.dart';

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(
    super.name,
    super.launchDate,
    this.altitude,
  );
}

void main() {
  Orbiter challenger = Orbiter('Challenger', DateTime(1986, 1, 28), 46000);

  print(challenger);
}
