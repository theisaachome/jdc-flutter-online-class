import 'package:flutter/material.dart';
import 'package:inheritedwidgetdemo/provider/note-provider.dart';

class NoteDetail extends StatelessWidget {
  static final routeName = "noteDetail";

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    final provider = NoteProvider.of(context);
    final note = provider.getNote(id);

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        actions: [
          IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                provider.delete(note);
                Navigator.of(context).pop();
              }),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          Text(
            "${note.title}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "${note.description}",
            textAlign: TextAlign.left,
            style: TextStyle(letterSpacing: 0.2),
          ),
        ],
      ),
    );
  }
}
