import 'package:flutter/material.dart';
import 'package:shopping/widgets/category/category-list.widget.dart';
import 'package:shopping/widgets/product/product-list.widget.dart';
import 'package:shopping/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            SearchBox(),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                Text(
                  "Categories",
                  style: Theme.of(context).textTheme.headline,
                ),
              ],
            ),
            Container(
              height: 90,
              child: CategoryList(),
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
              height: 350,
              child: ProductList(
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
