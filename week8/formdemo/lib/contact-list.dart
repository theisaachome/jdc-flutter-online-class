import 'package:flutter/material.dart';
import 'package:formdemo/app-format.dart';
import 'package:formdemo/model/contact-model.dart';
import 'package:formdemo/widgets/platform-alert-dialog.dart';

class ContactList extends StatelessWidget {
  ContactList({
    Key key,
    @required this.myContact,
    @required this.deleteContact,
  }) : super(key: key);

  final ContactModel myContact;
  final DeleteContact deleteContact;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(myContact.id),
      background: Container(
        color: Colors.red,
        child: Align(
          alignment: Alignment.centerRight,
          child: Icon(Icons.delete),
        ),
      ),
      onDismissed: (di) {},
      direction: DismissDirection.endToStart,
      confirmDismiss: (di) async {
        final result = await PlatformAlertDialog(
          title: "! Warning !",
          content: "Are You Sure ? \n You want to delete this Contact.",
          defaultAction: "Ok",
          cancelAction: "Cancel",
        ).show(context);

        print(result);

        if (result) {
          print(result);
          //delete
          final isSucess = deleteContact(myContact.id);
          if (isSucess) {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.yellow,
                content: Text(
                  "Contact Was Successfull deleted",
                  textAlign: TextAlign.center,
                ),
                duration: Duration(seconds: 2),
              ),
            );
          }
          print(isSucess);
        }
        return result;
      },
      child: Column(
        children: [
          ListTile(
            title: Text(myContact.userName),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),
                Text(myContact.userEmail),
                SizedBox(
                  height: 4,
                ),
                Text(appDateForm(myContact.dob)),
                SizedBox(
                  height: 4,
                ),
                Text(myContact.userPhone),
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
