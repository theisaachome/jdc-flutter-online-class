import 'package:flutter/material.dart';
import 'package:inheritedwidgetdemo/model/model.dart';
import 'package:inheritedwidgetdemo/provider/contact-provider.dart';

class ContactDetail extends StatelessWidget {
  static final routeName = "detail";

  @override
  Widget build(BuildContext context) {
    final contactId = ModalRoute.of(context).settings.arguments;
    final contact = ContactProvider.of(context).getContact(contactId);
    return Scaffold(
      body: Hero(
        tag: contact.id,
        child: Column(
          children: [
            Image.network(
              contact.imageUrl,
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            contactInfo(
              context,
              icon: Icons.person,
              label: "Name",
              data: contact.name,
            ),
            contactInfo(context,
                icon: Icons.phone,
                label: "Mobile",
                data: "+(95) ${contact.phone}"),
            contactInfo(
              context,
              icon: Icons.email,
              label: "Email",
              data: contact.email,
            ),
          ],
        ),
      ),
    );
  }

  Widget contactInfo(
    BuildContext context, {
    IconData icon,
    String label,
    String data,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.teal))),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              icon ?? Icons.question_answer,
              color: Colors.teal,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label ?? "Unknown",
                style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.teal,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                data,
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
