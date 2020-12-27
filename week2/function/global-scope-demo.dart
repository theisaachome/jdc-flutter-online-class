const myScore = 100;
void main() {
  const a = 10;
  print(a);
  print(myScore);

  void innerFunction(var value) {
    print(a);
    print(value);
    print(myScore);
    void nestedFunction(var b) => print(a);
    nestedFunction(40);
  }

  innerFunction(20);
  foo();
}

void foo() {
  print(myScore);
}
