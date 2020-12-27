import 'package:flutter/material.dart';
import 'package:richtextdemo/presentation/common/app-style.dart';
import 'package:richtextdemo/presentation/screens/home-screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/bg.jpeg"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: appTitleStyle,
                children: [
                  TextSpan(
                    text: "ADAPTIVE\n",
                  ),
                  TextSpan(
                    text: "DESIGN",
                    style: appTitleStyle.copyWith(
                      color: Colors.black,
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Colors.orange,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (c) => HomeScreen()),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.play_arrow),
                  Text(
                    "Get Started",
                    style: buttonLabelStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
