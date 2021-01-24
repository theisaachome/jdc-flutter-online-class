import 'package:flutter/material.dart';
import 'package:inheritedwidgetdemo/model/model.dart';
import 'package:inheritedwidgetdemo/provider/note-provider.dart';

class NoteForm extends StatefulWidget {
  @override
  _NoteFormState createState() => _NoteFormState();
}

class _NoteFormState extends State<NoteForm> {
  final titleVal = TextEditingController();
  final descriptionVal = TextEditingController();
  final _formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Form(
          key: _formState,
          child: ListView(
            children: [
              TextFormField(
                controller: titleVal,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.note),
                  hintText: "Note Title",
                ),
                validator: (val) {
                  if (val.isEmpty) return "Title Can't be Empty";
                  return null;
                },
              ),
              TextFormField(
                controller: descriptionVal,
                maxLines: 8,
                decoration: InputDecoration(
                  hintText: "Note Description",
                ),
                validator: (val) {
                  if (val.isEmpty) return "Enter Somethinng";
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          submitForm(context);
        },
        child: Icon(Icons.check),
      ),
    );
  }

  void submitForm(BuildContext context) {
    final provider = NoteProvider.of(context);
    final newNote = Note(
      id: DateTime.now().toString(),
      title: titleVal.text,
      description: descriptionVal.text,
    );
    if (_formState.currentState.validate()) {
      provider.addNote(newNote);
      Navigator.of(context).pop();
    }
  }
}
