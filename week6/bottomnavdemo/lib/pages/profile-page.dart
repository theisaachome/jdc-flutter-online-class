import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile Page"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(
              20,
              (index) => buildContent(context),
            ),
          ),
        ));
  }

  Widget buildContent(context) => Container(
        padding: const EdgeInsets.all(8.0),
        // decoration:
        //     BoxDecoration(borderRadius: BorderRadius.circular(18)),
        child: Stack(
          children: [
            // first layer
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1524114664604-cd8133cd67ad?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hpY2tlbiUyMCUyMHJlY2lwZXN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"))),
            ),
            //second Layer
            Positioned(
              top: 26,
              left: 0,
              child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Text(
                    "Discount 20 %",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
            ),
            Positioned(
              top: 64,
              left: 0,
              child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Text(
                    "Free Delivery",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
            ),
            Positioned(
                right: 8,
                top: 26,
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white10,
                  ),
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.pink,
                  ),
                )),

            Positioned(
              bottom: 20,
              left: 20,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  "35 min",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
