void main() {
  final students = ["Aung Aung", "Maung Maung", "Thaw Thaw", "Thida"];
  final isNew = true;
  final isOld = false;
  if (isNew) {
    students.add("John");
  }
  if (isOld) {
    students.add("Already in class");
  }
  print(students);

  // Using Collection-if
  final newStudents = [
    "Isaac",
    "Olivia",
    "Jenifer",
    "Maria",
    if (isNew) "Andy James",
    if (isOld) "Already In Class Room",
    for (var student in students) student,
  ];

  final finalYearStudent = [
    "Ko Ko",
    "Kyaw Kyaw",
    ...newStudents,
  ];
  print(finalYearStudent);

  final extraColor = ["Green", "Blue"];
  final addExtraColor = true;
  final addMoreExtraColor = true;

  final colors = [
    "White",
    "Black",
    if (addExtraColor) ...extraColor,
    if (addMoreExtraColor) ...[" More Extra Colors", " Grey", "Navy"]
  ];
  print(colors);
}
