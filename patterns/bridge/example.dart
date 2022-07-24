import 'bridge.dart';

void main() {
  CoffeeRoaster roaster = CoffeeRoaster();

  for (var i = 0; i < 3; i++) {
    roaster.turnGasValve();
    if (roaster.isTooHot) {
      roaster.loudspeaker = LoudspeakerWithAlarm();
    }
  }
}
