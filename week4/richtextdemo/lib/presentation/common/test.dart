void main() {
  print(getName("Maung Maung", 20));

  print(getInfo());
}

//positional
String getName(String name, int age) {
  return "Your Name is $name and your age is : $age";
}

// name paramters
String getInfo({String name = "Unknow", int age = 0}) {
  return "Your Name is $name and your age is : $age";
}
