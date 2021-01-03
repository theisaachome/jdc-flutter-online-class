import 'package:flutter/material.dart';
import 'package:formdemo/add-form.dart';
import 'package:formdemo/contact-list.dart';
import 'package:formdemo/model/contact-model.dart';
import 'package:formdemo/widgets/platform-alert-dialog.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myContacts = <ContactModel>[
    ContactModel(
      id: DateTime.now().toIso8601String(),
      userName: "Maung Maung",
      userEmail: "maunngmaung@gmail.com",
      userPhone: "098989878",
      dob: DateTime.now(),
    ),
    ContactModel(
      id: DateTime.now().toIso8601String(),
      userName: "Aung Aung",
      userEmail: "aunngaung@gmail.com",
      userPhone: "098989878",
      dob: DateTime.now(),
    ),
    ContactModel(
      id: DateTime.now().toString(),
      userName: "Hla Hla ",
      userEmail: "hlahla@gmail.com",
      userPhone: "098989878",
      dob: DateTime.now(),
    ),
    ContactModel(
      id: DateTime.now().toIso8601String(),
      userName: "Thaw Thaw ",
      userEmail: "thawthaw@gmail.com",
      userPhone: "098989878",
      dob: DateTime.now(),
    ),
    ContactModel(
      id: DateTime.now().toIso8601String(),
      userName: "Maw Maw ",
      userEmail: "mawmaw@gmail.com",
      userPhone: "098989878",
      dob: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  PlatformAlertDialog(
                    title: "Waring",
                    content: "Testing Waring for alert dialog",
                    defaultAction: "OK",
                    cancelAction: "Cancel",
                  ).show(context);
                },
              ),
              IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (c) => AddForm(
                              addContact: addContact,
                            )));
                  })
            ],
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return ContactList(
                myContact: myContacts[index],
                deleteContact: deleteContact,
              );
            }, childCount: myContacts.length),
          )
        ],
      ),
    );
  }

  void addContact(ContactModel contactModel) {
    setState(() {
      myContacts.add(contactModel);
    });
  }

  bool deleteContact(String id) {
    myContacts.removeWhere((c) => c.id == id);
    return true;
  }
}
