import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int selected = -1;
  List num = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
  List table = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // crossAxisCount: 5,
                  // mainAxisSpacing: 9,
                  // crossAxisSpacing: 0,
                  // ),
                  itemCount: num.length,
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          table.clear();
                          selected = -1;
                          for (int i = 1; i <= num.length; i++) {
                            print("${num[index]} X $i = ${num[index] * i}");
                            selected = num[index];
                            table.add(num[index] * i);
                            // selected < 10 ? table.add(num[index] * i) : "";
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 5, left: 30, right: 30),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                        ),
                        child: Center(
                          child: Text(
                            num[index].toString(),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: table.length,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 5, left: 30, right: 30),

                    // height: 50,

                    // child: Text("${table[2]}"),
                    child: Text(
                      "$selected x ${index + 1} = ${table[index]}",
                      style: TextStyle(color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                      color: selected == 1 ? Colors.amber : Colors.teal,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
