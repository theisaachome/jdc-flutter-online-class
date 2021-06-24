void main() {
  printOrderItem();
}

Future<String> fetchUserOrder() {
  final orderItem = Future.delayed(Duration(seconds: 3), () => "Black Coffee");
  return orderItem;
}

void printOrderItem() async {
  print("Fetching User Order....");
  final orderItem = await fetchUserOrder();
  print("Your Order is : $orderItem");
}
