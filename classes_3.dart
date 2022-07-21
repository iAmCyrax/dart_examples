import 'models/point.dart';

void main() {
  Point point1 = Point(4, 2);
  Point origin = Point.origin;
  Point pointFromJson = Point.fromJson({
    'x': 5,
    'y': 2,
  });

  double distance = point1.distanceTo(pointFromJson);

  print(distance);
}
