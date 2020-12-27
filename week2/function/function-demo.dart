void main() {
  var name = " Isaachome";
  var age = 20;

  final returnValue = greet(name, age);
  print(returnValue);
  final person = showInfo(age: 20, name: "Hla Hla");
  print(person);
  getAddress();
}

String greet(String name, int age) {
  return "I am $name and I am $age year old";
}

String showInfo({String name, int age}) => "I am $name and I am $age year old.";

void getAddress() => print("Your Address");
