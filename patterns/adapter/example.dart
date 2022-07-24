import 'adapter.dart';

void main() {
  Adapter adapter = Adapter();
  String result = adapter.call();

  assert(result == adapteeMessage);
}
