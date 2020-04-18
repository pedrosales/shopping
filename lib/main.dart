import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu App"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: ListView(
          scrollDirection: Axis.vertical,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.yellow,
              child: Text("item 1"),
            ),
            Text("item 2"),
            Text("item 3"),
            Text("item 4"),
            Text("item 4"),
            Text("item 4"),
            Text("item 4"),
            Text("item 4"),
            Text("item 4"),
            Text("item 4"),
            Text("item 4"),
            Text("item 4"),
            Text("item 4"),
            Text("item 4"),
          ],
        ),
      ),
    );
  }
}
