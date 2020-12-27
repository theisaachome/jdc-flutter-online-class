void main() {
  //create array 0 to -1
  final carlist = ["BWM", "Hammer", "Honda", "Yamaha DT"];

  final list = [1, 2, 3];
  // int sum = 0;
  // for (var data in list) {
  //   sum += data;
  // }
  // print("Total : $sum");
  // print(carlist);
  // //  single item
  // // print(carlist[2]);
  for (var car in carlist) {
    print("Using For Loop");
    print(car);
  }
  // for (var i = 0; i < carlist.length; i++) {
  //   print(carlist[i]);
  // }

  print(carlist.length);
  print(carlist.isEmpty);
  print(carlist.first);

  print(carlist.last);

  // add new item to list operation
  carlist.add("New Car");

  carlist.clear();
  print(carlist.isEmpty);

  // type annotationn list

  List<String> student = [
    "Aung Aung",
    "Maung Maung",
    " Nilar",
  ];

  final foods = <String>[
    "Banana",
    "Apple",
    "Waterlemon",
  ];
}
