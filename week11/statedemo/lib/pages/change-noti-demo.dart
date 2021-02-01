import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statedemo/models/wish-model.dart';
import 'package:statedemo/notifers/wish-notifier.dart';
import 'package:statedemo/pages/wish-add-form.dart';

class ChangeNotificationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<WishNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Notifier"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: provider.getWishes.length,
            itemBuilder: (c, index) {
              final Wish wish = provider.getWishes[index];
              return ListTile(
                title: Text("${wish.title}"),
                subtitle: Text("${wish.note}"),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isDismissible: false,
              context: context,
              builder: (context) => WishAddForm());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
