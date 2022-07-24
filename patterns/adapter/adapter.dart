const String adapteeMessage = 'Adaptee method was called';

class Adaptee {
  String method() {
    print('Adaptee method is being called');

    return adapteeMessage;
  }
}

abstract class Target {
  String call();
}

class Adapter implements Target {
  @override
  String call() {
    Adaptee adaptee = Adaptee();
    print('Adapter call is being called');

    return adaptee.method();
  }
}
