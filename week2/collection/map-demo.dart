void main() {
  final person = {
    "name": "Isaachome",
    "age": 20,
    "address": "Yangon",
  };

  Map<String, dynamic> employee = {
    "id": 0003,
    "name": "John Petrucci",
    "address": " NY",
    "isSingle": false,
  };

  employee["likeComment"] = true;
  var name = employee["orange"] as String;

  print(" Using Keys ");
  // using keys properties
  for (var key in employee.keys) {
    print("$key :  ${employee[key]}");
  }

  print(" Using Values ");
  // using values propertie
  for (var data in employee.values) {
    print(data);
  }

  print(" Using Entries ");
//using entries properties
  for (var entry in employee.entries) {
    print("${entry.key} : ${entry.value}");
  }
}
