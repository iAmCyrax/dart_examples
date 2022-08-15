class Animal {
  void chase(Animal animal) {
    print('Chase a animal!');
  }
}

class Mouse extends Animal {
  // ...
}

class Cat extends Animal {
  @override
  // In `Animal` class, you can chase any animal. But in the `Cat` class, you can chase just mouse (subtype of `Animal`).
  void chase(covariant Mouse animal) {
    print('Chase a mouse!');
  }
}

void main() {
  Cat cat = Cat();
  Mouse mouse = Mouse();
  Animal otherAnimal = Animal();

  cat.chase(mouse); // ok
  otherAnimal.chase(mouse); // ok
  otherAnimal.chase(cat); // ok
  // cat.chase(otherAnimal); // The argument type 'Animal' can't be assigned to the parameter type 'Mouse'.
}