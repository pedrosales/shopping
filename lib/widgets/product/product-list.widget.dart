import 'package:flutter/material.dart';

import 'product-card.widget.dart';

class ProductList extends StatelessWidget {
  final Axis scrollDirection;

  ProductList({@required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: scrollDirection,
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
}
