import 'package:flutter/material.dart';
import 'package:inheritedwidgetdemo/model/model.dart';
import 'package:inheritedwidgetdemo/pages/contact/detail.dart';
import 'package:inheritedwidgetdemo/provider/contact-provider.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contacts = ContactProvider.of(context).contacts;
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.of(context).pushNamed(
              ContactDetail.routeName,
              arguments: contacts[index].id,
            );
          },
          leading: CircleAvatar(
            backgroundImage: NetworkImage(contacts[index].imageUrl),
          ),
          title: Text(contacts[index].name),
          subtitle: Text(contacts[index].email),
        );
      },
    );
  }
}
