void main() {
  fetchUserOrder();
  print("User Order is fetching...");

  // with error
  fetchUserOrderwithError()
      .then((value) => null)
      .catchError((error) => print(error))
      .whenComplete(() => print("Fetchinng User Order Done !"));
}

Future<void> fetchUserOrder() {
  return Future.delayed(
    Duration(seconds: 3),
    () => print("Black Coffee"),
  );
}

Future<void> fetchUserOrderwithError() {
  return Future.delayed(
      Duration(seconds: 2), () => throw "Opps! Sorry Something Went Wrong");
}
