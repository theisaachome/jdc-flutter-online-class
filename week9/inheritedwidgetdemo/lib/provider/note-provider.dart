import 'package:flutter/material.dart';
import 'package:inheritedwidgetdemo/model/model.dart';

class NoteProvider extends StatefulWidget {
  final Widget child;
  final List<Note> notes;

  const NoteProvider({Key key, this.child, this.notes}) : super(key: key);

  static _NoteProviderState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_NoteInherited>().data;
  }

  @override
  _NoteProviderState createState() => _NoteProviderState();
}

class _NoteProviderState extends State<NoteProvider> {
  List<Note> _notes = NoteApi.getNotes;

  @override
  void initState() {
    print("Init");
    super.initState();
  }

  List<Note> get notes => [..._notes];

  void addNote(Note note) {
    setState(() {
      _notes.add(note);
    });
  }

  void delete(Note note) {
    setState(() {
      _notes.removeWhere((n) => n.id == note.id);
    });
  }

  Note getNote(String id) {
    return _notes.firstWhere(
      (note) => note.id == id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _NoteInherited(
      child: widget.child,
      data: this,
    );
  }
}

class _NoteInherited extends InheritedWidget {
  final _NoteProviderState data;

  _NoteInherited({
    @required this.data,
    @required Widget child,
    Key key,
  }) : super(child: child, key: key);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
