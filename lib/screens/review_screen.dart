import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade50,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    // padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(17),
                    child: const Text(
                      'Write a Review',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
              ],
            ),
            const CircleAvatar(
              radius: 70,
              // backgroundColor: Colors.amber,
              backgroundImage: AssetImage('assets/download.jpeg'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'How was your experience\n with ',
                      style: TextStyle(
                          fontSize: 16,
                          wordSpacing: 4,
                          fontWeight: FontWeight.w600),
                      children: [
                        TextSpan(
                          text: 'Sylani Instuition',
                          style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: RatingBar(
                    // itemPadding: EdgeInsets.symmetric(horizontal: 5.0),
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star_border,
                    onRatingChanged: (value) => debugPrint('$value'),
                    initialRating: 3,
                    maxRating: 5,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("See the text"),
                  Text("More"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(13),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Write anytihng",
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(
                      left: 100, right: 100, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Submit Review"),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
