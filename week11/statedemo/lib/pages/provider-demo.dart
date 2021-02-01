import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statedemo/models/firend-model.dart';
import 'package:statedemo/notifers/friend-notifier.dart';

class ProviderDemo extends StatelessWidget {
  final Friend freind;
  const ProviderDemo({Key key, this.freind}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final friends = Provider.of<FriendList>(context).getFriends;
    final friends = context.read<FriendList>().getFriends;
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Samples"),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: friends.length,
              itemBuilder: (c, index) {
                final Friend friend = friends[index];
                return ListTile(
                  title: Text(friend.name),
                  subtitle: Text(friend.email),
                );
              })),
    );
  }
}
