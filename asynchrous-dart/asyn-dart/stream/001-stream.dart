void main() async {
  // create stream
  final streams =
      Stream<int>.fromIterable([10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]);
  final sumResult = await sumStream(streams);
  print(sumResult);
}

Future<int> sumStream(Stream<int> streams) async {
  var sum = 0;
  await for (var value in streams) {
    // print(value);
    sum += value;
  }
  return sum;
}
