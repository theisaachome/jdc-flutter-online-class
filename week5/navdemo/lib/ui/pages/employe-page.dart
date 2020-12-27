import 'package:flutter/material.dart';
import 'package:navdemo/ui/data.dart';

class EmployeePage extends StatelessWidget {
  static const routeName = "employee-page";
  @override
  Widget build(BuildContext context) {
    final Employee emp = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Employee Info",
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            "ID  ${emp.id}",
            style: Theme.of(context).textTheme.headline5,
          ),
          Text("Phone : ${emp.phone}",
              style: Theme.of(context).textTheme.headline5),
        ],
      ),
    );
  }
}
