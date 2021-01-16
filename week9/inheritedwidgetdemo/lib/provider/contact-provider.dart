import 'package:flutter/material.dart';
import 'package:inheritedwidgetdemo/model/model.dart';

class ContactProvider extends InheritedWidget {
  //data
  final List<Contact> contacts;

  ContactProvider({
    Key key,
    @required this.contacts,
    @required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  static ContactProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ContactProvider>();
  }

  Contact getContact(int id) {
    return contacts.firstWhere((c) => c.id == id);
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
