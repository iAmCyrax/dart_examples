class Person {
  final String _name;

  Person(this._name);

  String greet(String who) => 'Hello, $who. I am $_name.';
}

class Impostor implements Person {
  String get _name => '';

  @override
  String greet(String who) => 'Hi, $who. Do you know who I am?';
}
