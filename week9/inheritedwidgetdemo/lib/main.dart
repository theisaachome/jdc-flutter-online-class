import 'package:flutter/material.dart';
import 'package:inheritedwidgetdemo/home-page.dart';
import 'package:inheritedwidgetdemo/model/model.dart';
import 'package:inheritedwidgetdemo/pages/contact/detail.dart';
import 'package:inheritedwidgetdemo/pages/note/detail-page.dart';
import 'package:inheritedwidgetdemo/provider/contact-provider.dart';
import 'package:inheritedwidgetdemo/provider/note-provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContactProvider(
      contacts: ContactApi.getContact(),
      child: NoteProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData.dark(),
          initialRoute: "/",
          routes: {
            "/": (c) => MyHomePage(),
            ContactDetail.routeName: (c) => ContactDetail(),
            NoteDetail.routeName: (c) => NoteDetail(),
          },
        ),
      ),
    );
  }
}
