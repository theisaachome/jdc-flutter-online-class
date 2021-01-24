import 'package:flutter/material.dart';
import 'package:inheritedwidgetdemo/pages/note/detail-page.dart';
import 'package:inheritedwidgetdemo/pages/note/note-form.dart';
import 'package:inheritedwidgetdemo/provider/note-provider.dart';

class NotesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final notes = NoteProvider.of(context).notes;
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return ListTile(
                key: UniqueKey(),
                onTap: () {
                  Navigator.of(context).pushNamed(NoteDetail.routeName,
                      arguments: notes[index].id);
                },
                title: Text(notes[index].title),
                subtitle: Text(
                  notes[index].description,
                  style: TextStyle(letterSpacing: 0.5),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (c) => NoteForm()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
