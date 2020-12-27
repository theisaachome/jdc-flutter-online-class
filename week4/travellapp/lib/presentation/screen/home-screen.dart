import 'package:flutter/material.dart';
import 'package:travellapp/presentation/common/shared/app-style.dart';
import 'package:travellapp/presentation/common/widgets/label-widget.dart';
import 'package:travellapp/presentation/common/widgets/my-app-bar.dart';
import 'package:travellapp/presentation/common/widgets/popular-widget.dart';
import 'package:travellapp/presentation/common/widgets/rating-widget.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Appbar
              MyAppBar(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 26),
                child: Text(
                  "Explore Myanmar Places to Visit",
                  style: titleStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26),
                      child: LabelWidget(
                        value1: "Popular",
                        value2: "More",
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          for (var i = 0; i < 10; i++) PopularWidget()
                        ]),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26),
                      child: LabelWidget(
                        value1: "Travel Agencies",
                        value2: "More",
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (var i = 0; i < 10; i++)
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(10)),
                              )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26),
                      child: LabelWidget(
                        value1: "All Offers",
                        value2: "More",
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            for (var i = 0; i < 10; i++)
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(vertical: 10),
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[200],
                                          blurRadius: 2,
                                          offset: Offset(0, 3)),
                                      BoxShadow(
                                          color: Colors.grey[300],
                                          blurRadius: 2,
                                          offset: Offset(0, 4)),
                                    ]),
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            bottomLeft: Radius.circular(16),
                                          ),
                                          child: Image.asset(
                                            "assets/images/hotel/p2.jpeg",
                                            fit: BoxFit.cover,
                                            height: 120,
                                          ),
                                        )),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        flex: 4,
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Mandalay",
                                                style: countryLabelStyle,
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                "U Being Bridge",
                                                style: citiesStyle,
                                              ),
                                              RatingWidget(
                                                rating: 4,
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              RichText(
                                                  text: TextSpan(
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                      ),
                                                      children: [
                                                    TextSpan(text: "\$50"),
                                                    TextSpan(text: " 5 Days")
                                                  ]))
                                            ],
                                          ),
                                        )),
                                  ],
                                ),
                              )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i) {},
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on_outlined,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.folder_open,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
