void main() {
  List<int> fibonacciFirst10 = fibonacciArray(10);

  fibonacciFirst10.forEach((element) => print(element));
}

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

List<int> fibonacciArray(int to) {
  List<int> arr = [];
  for (int i = 0; i <= to; i++) {
    arr.add(fibonacci(i));
  }
  return arr;
}
