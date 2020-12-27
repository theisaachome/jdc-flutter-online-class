import 'package:flutter/material.dart';
import 'package:richtextdemo/presentation/common/app-style.dart';
import 'package:richtextdemo/presentation/widgets/app-bar.dart';
import 'package:richtextdemo/presentation/widgets/my-box-container.dart';
import 'package:richtextdemo/presentation/widgets/place-widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyAppBar(),
              Text(
                "Exlore Myanmar Places to Visit",
                style: tourTitle,
              ),
              // Pupolar
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular"),
                      Text("More"),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PlaceWidget(),
                        PlaceWidget(),
                        PlaceWidget(),
                      ],
                    ),
                  ),
                ],
              ),
              // Travel agencies
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Travel Agencies"),
                      Text("More"),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var i = 0; i < 10; i++)
                          MyBoxWidget(width: 80, height: 80)
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("All Offers"),
                      Text("More"),
                    ],
                  ),
                  Column(
                    children: [
                      for (var i = 0; i < 10; i++)
                        MyBoxWidget(
                          height: 190,
                          width: MediaQuery.of(context).size.width,
                        )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
