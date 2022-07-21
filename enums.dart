void main() {
  final yourPlanet = Planet.earth;

  if (!yourPlanet.isGiant) print('Your planet is not a "giant planet".');
}
enum PlanetType { terrestrial, gas, ice }

enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  earth(planetType: PlanetType.terrestrial, moons: 1, hasRings: false),
  mars(planetType: PlanetType.terrestrial, moons: 2, hasRings: false),
  jupiter(planetType: PlanetType.gas, moons: 53, hasRings: true),
  saturn(planetType: PlanetType.gas, moons: 53, hasRings: true),
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  const Planet({
    required this.planetType,
    required this.moons,
    required this.hasRings,
  });

  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}
