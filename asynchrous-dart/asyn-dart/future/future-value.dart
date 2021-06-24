void main() async {
  try {
    final students = await getStudents();
    students.forEach((student) {
      print(student);
    });
    var result = await fetchUser();
    print(result);
  } catch (e) {
    print(e);
  }
}

Future<List<String>> getStudents() {
  return Future.value([
    "Aung Aung",
    "Maung Maung",
    "Zaw Zaw",
    "Thidar",
    "Maw Maw",
    "John Petrucci"
  ]);
}

Future<String> fetchUser() {
  return Future.error(Exception("Can not find User"));
}
