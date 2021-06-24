import 'dart:async';

class Order {
  DateTime orderDate;
  String type;
  Order(this.type);
}

class Tea {}

void main() {
  // waiter take order
  final controller = StreamController();
  final order = Order("singapore");

  // waiter give order to cash counter
  // create stream data
  controller.sink.add(order);

  // tea maker
  final teaMaker = StreamTransformer.fromHandlers(
    handleData: (teaType, sink) {
      if (teaType == 'normal') {
        sink.add(order);
      } else {
        sink.addError("Sorry I don't what type of tea you want to drink");
      }
    },
  );

  // inspect order
  controller.stream.map((order) => order.type).transform(teaMaker).listen(
      (order) {
    print(order.type);
  }, onError: (err) => print(err));
}
