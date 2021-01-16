import 'package:flutter/material.dart';

class StateContainer extends StatefulWidget {
  StateContainer({Key key, this.child}) : super(key: key);
  final Widget child;

  @override
  _StateContainerState createState() => _StateContainerState();

  static _StateContainerState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_CounterProvider>().data;
  }
}

class _StateContainerState extends State<StateContainer> {
  int count = 0;
  @override
  void initState() {
    super.initState();
  }

  increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _CounterProvider(
      child: widget.child,
      data: this,
    );
  }
}

class _CounterProvider extends InheritedWidget {
  //data
  final _StateContainerState data;

  _CounterProvider({
    Key key,
    @required this.data,
    @required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
