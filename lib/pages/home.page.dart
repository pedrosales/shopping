import 'package:flutter/material.dart';
import 'package:shopping/pages/product.page.dart';
import 'package:shopping/widgets/category/category-list.widget.dart';
import 'package:shopping/widgets/product/product-card.widget.dart';
import 'package:shopping/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            SearchBox(),
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
              child: CategoryList(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Best Selling",
                  style: Theme.of(context).textTheme.headline,
                ),
                FlatButton(
                  child: Text("See All"),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 280,
              child: productList(context),
            ),
          ],
        ),
      ),
    );
  }
}

Widget productList(BuildContext context) {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        ProductCard(
            image: "assets/product-10.png",
            title: "Nike Dry_Fit Long Sleeve",
            desciption: "Nike",
            price: 150),
        ProductCard(
            image: "assets/product-1.png",
            title: "BeoPlay Speaker",
            desciption: "Bang out fusen",
            price: 755),
        ProductCard(
            image: "assets/product-2.png",
            title: "Leather Wristwatch",
            desciption: "Tag Heuer",
            price: 450),
      ],
    ),
  );
}
