import 'package:flutter/material.dart';
import 'package:travellapp/presentation/common/shared/app-color.dart';
import 'package:travellapp/presentation/screen/home-screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = "/welcome-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg.jpeg"),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.white,
                onPressed: () => Navigator.of(context)
                    .pushReplacementNamed(HomeScreen.routeName),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.play_arrow,
                      color: buttonLabelColor,
                    ),
                    Text(
                      "Get Starting",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
