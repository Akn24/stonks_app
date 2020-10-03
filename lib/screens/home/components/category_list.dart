import 'package:flutter/material.dart';
import 'package:stonksapp/screens/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "Top Gainers",
            isActive: true,
            press: (){},
          ),
          CategoryItem(
            title: "Top Losers",
            press: (){},
          ),
          CategoryItem(
            title: "Nifty 50",
            press: (){},
          ),
          CategoryItem(
            title: "Sensex 30",
            press: (){},
          ),
          CategoryItem(
            title: "Desserts",
            press: (){},
          ),
        ],
      ),
    );
  }
}

