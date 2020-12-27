import 'package:flutter/material.dart';
import 'package:travellapp/presentation/common/shared/app-style.dart';
import 'package:travellapp/presentation/common/widgets/rating-widget.dart';

class PopularWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.grey[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/hotel/p1.jpeg",
                      ))),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Italy",
                    style: countryLabelStyle,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Venice, gondola ,cruise",
                    style: citiesStyle,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  RatingWidget(rating: 4),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
