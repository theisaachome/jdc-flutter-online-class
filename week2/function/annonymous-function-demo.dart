void main(List<String> args) {
  // without passing arguemnt
  () => 'Hi';
  final sayHI = (String name) => "Hello $name";
  print(('Aung Aung'));

  greeting((a) => " Hello My Dear $a", "Aung Aung");
}

void greeting(GreetMe greetMe, String name) {
  print(greetMe(name));
  print("Welcome to JDC flutter Course");
}

void greeting3(String Function(String a) f, String name) {
  print(f(name));
  print("Welcome to JDC flutter Course");
}

typedef GreetMe = String Function(String a);
