abstract class Thing {
  String get name;
  void doSomething();
}

class CompositeThing implements Thing {
  String name;
  Set<Thing> _childThings = Set();

  CompositeThing(this.name);

  void addChild(Thing child) {
    _childThings.add(child);
  }

  @override
  void doSomething() {
    print('\r\n** $name is doing someting. **\r\n');
    _childThings.forEach((composite) => composite.doSomething());
    print('\r\n** $name is all done. **\r\n');
  }
}

class LeafThing implements Thing {
  String name;

  LeafThing(this.name);

  @override
  void doSomething() {
    print('* $name!');
  }
}
