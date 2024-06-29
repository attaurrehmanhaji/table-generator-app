import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(17),
                  child: Text(
                    'Write a Review',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  )),
            ],
          ),
          Container(
              height: 100,
              width: 100,
              child: Image(image: AssetImage("assets/download.jpeg"))),
          // ClipRRect(
          // backgroundImage: AssetImage('assets\download.jpeg'),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RatingBar(
                filledIcon: Icons.star,
                emptyIcon: Icons.star_border,
                onRatingChanged: (value) => debugPrint('$value'),
                initialRating: 3,
                maxRating: 5,
              ),
            ],
          )
        ],
      )),
    );
  }
}
