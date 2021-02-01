import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statedemo/models/wish-model.dart';
import 'package:statedemo/notifers/wish-notifier.dart';

class WishAddForm extends StatefulWidget {
  @override
  _WishAddFormState createState() => _WishAddFormState();
}

class _WishAddFormState extends State<WishAddForm> {
  final titleController = TextEditingController();
  final noteController = TextEditingController();
  final _formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: _formState,
        child: ListView(
          children: [
            TextFormField(
              controller: titleController,
              validator: (value) {
                if (value.isEmpty) {
                  return "Can't Be Empty";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "What's your Wish for Future?",
                hintStyle: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: noteController,
              decoration:
                  InputDecoration(hintText: "For More Detail (optional)"),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  color: Colors.teal,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancel"),
                ),
                RaisedButton(
                  color: Colors.teal,
                  onPressed: submitForm,
                  child: Text("Add"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void submitForm() {
    final newWish = Wish(
      note: noteController.text,
      title: titleController.text,
    );

    final provider = Provider.of<WishNotifier>(context, listen: false);
    if (_formState.currentState.validate()) {
      provider.addWish(newWish);
      Navigator.of(context).pop();
    }
  }
}
