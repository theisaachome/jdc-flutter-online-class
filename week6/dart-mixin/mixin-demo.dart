abstract class Walker {
  void walking() {
    print("I am Walking");
  }
}

mixin Swimwer {
  void swiming() {
    print("I am Swiming");
  }
}

class Animal {}

class Fish extends Animal with Swimwer {}

class Dog extends Animal with Swimwer, Walker {}

void main() {
  // normal Object create  or instance instantiated;
  // final walker = Walker();
  // walker.walking();

  final fish = Fish();
  fish.swiming();

  final dog = Dog();
  dog.walking();
  dog.swiming();

  //
  // final swimmer = Swimwer();
}
