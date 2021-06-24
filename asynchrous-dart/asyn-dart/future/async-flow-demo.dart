void main() async {
  countSeconds(4);
  await printOrderMessage();
}

Future<String> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 4), () => "Green Tea");
}

Future<void> printOrderMessage() async {
  print("Awaiting user order ....");
  final orderItem = await fetchUserOrder();
  print("Your Order is $orderItem");
}

void countSeconds(int secs) {
  for (var i = 1; i <= secs; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
