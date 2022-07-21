// ignore_for_file: public_member_api_docs, sort_constructors_first
class Rectangle {
  double left;
  double top;
  double width;
  double height;

  Rectangle({
    required this.left,
    required this.top,
    required this.width,
    required this.height,
  });

  double get right => left + width;
  set right(double value) => left = value - width;

  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}
