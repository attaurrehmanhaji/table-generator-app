import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Tableshow extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final t, i, r, len;
  //ignore: prefer_typing_uninitialized_variables
  const Tableshow({super.key, this.t, this.i, this.r, this.len});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
      child: ListView.builder(
        itemCount: len,
        itemBuilder: (BuildContext context, index) {
          return Container(
            margin: EdgeInsets.only(top: 5, left: 30, right: 30),
            // height: 50,

            // child: Text("${table[2]}"),
            child: Center(
              child: Text(
                "$t x ${index + 1} = ${t[index].toString()}",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: t == 1 ? Colors.amber : Colors.teal,
            ),
          );
        },
      ),
    ));
  }
}
