abstract class Doer {
  void doSth();
}

class EffectiveDoer implements Doer {
  @override
  void doSth() {
    print('Did something');
  }
}

class Doer2 implements Doer {
  @override
  void doSth() {
    print('Doer2');
  }
}

class Doer3 implements Doer {
  @override
  void doSth() {
    print('Doer3');
  }
}