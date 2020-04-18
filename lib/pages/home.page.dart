import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            search(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: categoryList(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
    height: 60,
    padding: EdgeInsets.only(left: 10, right: 50),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.1),
      borderRadius: BorderRadius.all(
        Radius.circular(128),
      ),
    ),
    child: Row(
      children: <Widget>[
        Icon(Icons.search),
        Container(
          width: 280,
          padding: EdgeInsets.only(left: 10),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: "Search...",
              labelStyle: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget categoryList() {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
      ],
    ),
  );
}

Widget categoryItem() {
  return Container(
    width: 70,
    height: 70,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        new BoxShadow(
          color: Colors.black12,
          offset: new Offset(1, 1),
          blurRadius: 5,
          spreadRadius: 2,
        ),
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(64),
      ),
    ),
    child: Image.asset("assets/Icon_Devices.png"),
  );
}
