import 'package:badges/badges.dart';
import 'package:bookstore/ui/styles/app-theme.dart';
import 'package:flutter/material.dart';

Widget myAppBar({PreferredSizeWidget tabBar}) {
  return AppBar(
    bottom: tabBar == null ? null : tabBar,
    elevation: 0,
    leading: Icon(Icons.menu),
    title: Card(
      color: Color(0xFF333A4C),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.search,
              size: 26,
              color: Color(
                0xFF9CA0A7,
              ),
            )
          ],
        ),
      ),
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.qr_code_scanner_rounded),
        onPressed: () {},
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Center(
          child: Badge(
            badgeContent: Text(
              "13",
              style: TextStyle(
                fontSize: 10,
                color: primaryColor,
              ),
            ),
            badgeColor: Colors.white,
            child: Icon(
              Icons.notifications,
              size: 30,
            ),
          ),
        ),
      ),
    ],
  );
}
