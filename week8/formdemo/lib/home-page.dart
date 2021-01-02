import 'package:flutter/material.dart';
import 'package:formdemo/add-form.dart';
import 'package:formdemo/model/contact-model.dart';

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
        userPhone: "098989878"),
    ContactModel(
        id: DateTime.now().toIso8601String(),
        userName: "Aung Aung",
        userEmail: "aunngaung@gmail.com",
        userPhone: "098989878"),
    ContactModel(
        id: DateTime.now().toString(),
        userName: "Hla Hla ",
        userEmail: "hlahla@gmail.com",
        userPhone: "098989878"),
    ContactModel(
        id: DateTime.now().toIso8601String(),
        userName: "Thaw Thaw ",
        userEmail: "thawthaw@gmail.com",
        userPhone: "098989878"),
    ContactModel(
        id: DateTime.now().toIso8601String(),
        userName: "Maw Maw ",
        userEmail: "mawmaw@gmail.com",
        userPhone: "098989878"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
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
              return Column(
                children: [
                  ListTile(
                    title: Text(myContacts[index].userName),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Text(myContacts[index].userEmail),
                        SizedBox(
                          height: 4,
                        ),
                        Text(myContacts[index].userPhone),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                ],
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
    myContacts.where((c) => c.id == id);
    return true;
  }
}
