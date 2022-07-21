import 'dart:math';

class Point {
  final double x;
  final double y;

  static final Point origin = Point(0, 0);

  Point(this.x, this.y);

  Point.fromJson(Map<String, double> json)
      : x = json['x']!,
        y = json['y']!;

  Point.xAxis(double x) : this(x, 0);

  Point.yAxis(double y) : this(0, y);

  double distanceTo(Point other) {
    double dx = x - other.x;
    double dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }

}
