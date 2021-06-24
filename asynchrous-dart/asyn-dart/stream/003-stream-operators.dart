class Student {
  String name;
  int age;
  int gpa;
  Student(this.name, this.age, this.gpa);
}

final students = Stream<Student>.fromIterable([
  Student("Maung Maung", 21, 4),
  Student("Thaw Thaw", 22, 5),
  Student("Aung Aung", 20, 3),
  Student("Maw Maw", 23, 6),
  Student("Thidar Aung", 24, 6),
]);

void mapDemo() {
  int totalGpa = 0;
  students.map((s) => s.gpa).listen((gpa) => totalGpa += gpa,
      onDone: () => print("Student Total GPA: $totalGpa"));
}

void skipDemo() {
  students.skip(2).listen((s) => print(s.name));
}

void skipWhileDemo() {
  students.skipWhile((s) => s.gpa < 4).listen((s) => print(s.name));
}

void takeDemo() {
  students.take(2).listen((event) {
    print(event.name);
  });
}

void takeWhileDemo() {
  students.takeWhile((s) => s.age > 20).listen((s) => print(s.name));
}

void distinctDemo() {
  final colors = Stream.fromIterable([
    "red",
    "red",
    "blue",
    "blue",
    "blue",
    "green",
    "yellow",
    "black",
    "white"
  ]);

  colors.distinct().listen((event) {
    print(event);
  });
}

void main() {
  // mapDemo();
  // skipDemo();
  // skipWhileDemo();
  // takeDemo();
  // takeWhileDemo();
  distinctDemo();
}
