typedef Calculate = String Function(int a, int b);

// + - * /
String add(int a, int b) => "$a + $b : ${a + b}";

String substract(int a, int b) => "$a - $b : ${a - b}";

String multiply(int a, int b) => "$a * $b : ${a * b}";

String divide(int a, int b) => "$a / $b : ${a / b}";

void main() {
  doMath(multiply, 10, 5);

  final list = [1, 2, 23, 4, 5, 6];
  list.firstWhere((element) => false);
  list.forEach(print);
}

void doMath(Calculate c, int a, int b) {
  print(c(a, b));
}
