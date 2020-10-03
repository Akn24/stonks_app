import 'package:flutter/material.dart';
import 'package:stonksapp/components/search.dart';
//import 'package:stonksapp/screens/home/components/category_list.dart';
import 'package:stonksapp/screens/home/components/infoCompany.dart';
import 'package:stonksapp/screens/home/components/stockList.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
        child: Column(
        children: <Widget>[
          SearchBox(
            onChanged: (value){},
          ),
          //CategoryList(),
          StockList(),
          InfoCompany(),
        ],
      ),
    );
  }
}

