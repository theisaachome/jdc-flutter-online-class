import 'package:bookstore/ui/styles/app-style.dart';
import 'package:flutter/material.dart';

class WishListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "WhishListed Books",
            style: appTitle,
          ),
          SizedBox(
            height: 18,
          ),
          Expanded(
            child: GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 4 / 3,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    crossAxisCount: 2),
                itemBuilder: (c, index) {
                  return Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images-na.ssl-images-amazon.com/images/I/41Z2YiUEVYL._SX348_BO1,204,203,200_.jpg"))),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("PHP Objects, Patterns"),
                                Text(
                                  "MATT ZANDSTRA",
                                  style: authorStyle,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: List.generate(
                                      4,
                                      (index) => Icon(
                                            Icons.star,
                                            size: 12,
                                          )),
                                )
                              ],
                            )),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
