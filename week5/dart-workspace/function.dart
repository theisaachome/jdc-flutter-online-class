typedef Greet = String Function(String);
void main() {
  // unkonw function
  //action or behaviour
  () => "Hello ";
  final sayHi = (String name) => "hi $name";

  // how do i use them.
  // print(sayHi("Aung Aung"));
  welcome(sayHi, "Thidar");
}

//return string argurment String single
void welcome(Greet f, String name) {
  print(f(name));
  print("Welcome TO FLutter Course");
}
