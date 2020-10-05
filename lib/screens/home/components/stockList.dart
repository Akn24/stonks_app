import 'package:flutter/material.dart';
import 'package:stonksapp/screens/details/details_screen.dart';
import 'package:stonksapp/screens/home/components/stockCard.dart';


class StockList extends StatelessWidget {
  const StockList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          StockCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Infosys",
            press: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return DetailsScreen(companyName: "Infosys");
                  },
                ),
              );
            },
          ),
          StockCard(
            svgSrc: "assets/icons/chinese_noodles.svg",
            title: "TCS",
            press: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return DetailsScreen(companyName: "TCS");
                  },
                ),
              );
            },
          ),
          StockCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Microsoft",
            press: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return DetailsScreen(companyName: "Microsoft");
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

