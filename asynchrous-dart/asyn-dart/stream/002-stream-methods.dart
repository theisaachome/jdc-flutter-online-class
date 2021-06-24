Stream<int> getScores(int keyword) async* {
  for (var i = 1; i <= 10; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
    if (i == keyword) {
      throw Exception("Opps We got you bruh $keyword");
    }
  }
}

void main() async {
  final streams =
      Stream<int>.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]);
  final students = Stream<String>.fromIterable(
      ["Aung Aung", "Kyaw Kyaw", "Thidar", "Moe Moe", "Tun Tun", "Myo Myo"]);
  // streams.listen((data) =>print(data*2));
  // getScores(5).listen(
  //   (data) {
  //     print(data);
  //   },
  //   onError: (err) => print(err),
  //   onDone: () => print("Done"),
  //   cancelOnError: false,
  // );
  // print(await streams.first);
  // print(await streams.last);
  // print(await streams.length);
  // print(await streams.single);
  // if (await streams.any((i) => i > 13)) {
  //   print('There is a number greater than 13');
  // } else {
  //   print('There is not  number greater than 13');
  // }
  // if (await streams.contains(12)) {
  //   print('There is a 12 number ');
  // } else {
  //   print('There is not 12 number');
  // }

  // print(await streams.elementAt(5));
  // print(await streams.firstWhere((data) => data > 4));

  // print(await streams.lastWhere((data) => data > 4));
  // print(await students.join(","));
  final wordCount = await getWord().join(" ");
  final readMinute = wordCount.length / 200;

  print(readMinute.round());
}

Stream<String> getWord() {
  return Stream.value(paragraph);
}

final paragraph =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
